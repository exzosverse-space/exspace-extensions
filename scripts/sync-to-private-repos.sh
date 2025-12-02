#!/bin/bash

# Script para sincronizar extensões do monorepo exspace-extensions
# para os repositórios privados individuais no GitHub

set -e

GITHUB_ORG="exzosverse-space"
EXTENSIONS_DIR="gemini"
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Função para sincronizar uma extensão
sync_extension() {
    local EXT=$1
    local REPO_NAME="${EXT}-gemini-extension"
    local EXT_PATH="${EXTENSIONS_DIR}/${EXT}"
    local REPO_URL="https://github.com/${GITHUB_ORG}/${REPO_NAME}.git"
    
    echo -e "${BLUE}📦 Sincronizando: ${EXT}${NC}"
    
    # Verificar se o diretório existe
    if [ ! -d "${BASE_DIR}/${EXT_PATH}" ]; then
        echo -e "${YELLOW}  ⚠️  Diretório não encontrado: ${EXT_PATH}${NC}"
        return 1
    fi
    
    # Criar diretório temporário
    TEMP_DIR=$(mktemp -d)
    trap "rm -rf ${TEMP_DIR}" EXIT
    
    # Clonar repositório privado
    echo "  🔄 Clonando repositório privado..."
    if ! git clone "${REPO_URL}" "${TEMP_DIR}/${REPO_NAME}" 2>/dev/null; then
        echo -e "${YELLOW}  ⚠️  Repositório não existe ou não tem acesso. Criando...${NC}"
        # Criar repositório se não existir
        curl -s -X POST \
            -H "Authorization: token ${GITHUB_TOKEN}" \
            -H "Accept: application/vnd.github.v3+json" \
            https://api.github.com/user/repos \
            -d "{\"name\":\"${REPO_NAME}\",\"description\":\"${EXT} extension for Gemini CLI\",\"private\":true,\"auto_init\":false}" > /dev/null
        
        # Aguardar um pouco para o repo ser criado
        sleep 2
        
        # Tentar clonar novamente
        git clone "${REPO_URL}" "${TEMP_DIR}/${REPO_NAME}" 2>/dev/null || {
            echo -e "${YELLOW}  ❌ Erro ao criar/clonar repositório${NC}"
            return 1
        }
    fi
    
    # Copiar arquivos do monorepo para o repo privado
    echo "  📋 Copiando arquivos..."
    rsync -av --delete \
        --exclude='.git' \
        "${BASE_DIR}/${EXT_PATH}/" \
        "${TEMP_DIR}/${REPO_NAME}/"
    
    # Commit e push
    cd "${TEMP_DIR}/${REPO_NAME}"
    
    # Verificar se há mudanças
    if git diff --quiet && git diff --cached --quiet; then
        echo -e "${GREEN}  ✅ Nenhuma mudança detectada${NC}"
        return 0
    fi
    
    git add .
    git commit -m "Sync from exspace-extensions monorepo" || {
        echo -e "${YELLOW}  ⚠️  Nenhuma mudança para commitar${NC}"
        return 0
    }
    
    echo "  🚀 Enviando para GitHub..."
    git push origin main -q
    
    echo -e "${GREEN}  ✅ ${EXT} sincronizado com sucesso!${NC}"
    echo ""
}

# Função para sincronizar todas as extensões
sync_all() {
    echo -e "${BLUE}🚀 Sincronizando todas as extensões...${NC}"
    echo ""
    
    for EXT_DIR in "${BASE_DIR}/${EXTENSIONS_DIR}"/*/; do
        if [ -d "${EXT_DIR}" ]; then
            EXT=$(basename "${EXT_DIR}")
            sync_extension "${EXT}"
        fi
    done
    
    echo -e "${GREEN}✅ Sincronização completa!${NC}"
}

# Verificar se GITHUB_TOKEN está definido
if [ -z "${GITHUB_TOKEN}" ]; then
    echo -e "${YELLOW}⚠️  GITHUB_TOKEN não definido${NC}"
    echo "Carregando de ~/.gemini/.env..."
    if [ -f ~/.gemini/.env ]; then
        source ~/.gemini/.env
        if [ -z "${GITHUB_TOKEN_EXZOSVERSE_SPACE}" ]; then
            echo -e "${YELLOW}⚠️  GITHUB_TOKEN_EXZOSVERSE_SPACE não encontrado no .env${NC}"
            exit 1
        fi
        export GITHUB_TOKEN="${GITHUB_TOKEN_EXZOSVERSE_SPACE}"
    else
        echo -e "${YELLOW}❌ Arquivo ~/.gemini/.env não encontrado${NC}"
        exit 1
    fi
fi

# Processar argumentos
if [ "$1" == "--all" ] || [ -z "$1" ]; then
    sync_all
else
    sync_extension "$1"
fi


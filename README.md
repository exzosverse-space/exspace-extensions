# ExSpace Extensions - Monorepo

Repositório centralizado de extensões Gemini CLI. Fonte única de verdade para todas as extensões ExSpace.

## 🎯 Estratégia

Este repositório serve como **fonte única** para todas as extensões. Cada extensão é sincronizada automaticamente para seu próprio repositório privado no GitHub para instalação remota.

## 📁 Estrutura

```
exspace-extensions/
├── gemini/                    # Extensões Gemini CLI
│   ├── igniter-js/           # Fonte da extensão
│   ├── shadcn-ui/            # Fonte da extensão
│   └── ...
├── scripts/                    # Scripts de automação
│   └── sync-to-private-repos.sh  # Sincronização automática
└── README.md
```

## 🔄 Fluxo de Trabalho

### 1. Desenvolver/Atualizar Extensão

```bash
cd /Users/exzosverse/Projects/exspace-extensions/gemini/igniter-js
# ... fazer mudanças ...
git add .
git commit -m "Update igniter-js extension"
git push  # Push para exspace-extensions
```

### 2. Sincronizar para Repositório Privado

```bash
# Sincronizar uma extensão específica
./scripts/sync-to-private-repos.sh igniter-js

# Sincronizar todas as extensões
./scripts/sync-to-private-repos.sh --all
```

### 3. Instalar/Atualizar no Gemini CLI

```bash
# Instalar via GitHub URL
gemini extensions install https://github.com/exzosverse-space/igniter-js-gemini-extension --consent

# Ou atualizar (desinstalar e reinstalar)
gemini extensions uninstall igniter-js
gemini extensions install https://github.com/exzosverse-space/igniter-js-gemini-extension --consent
```

## 📦 Extensões Disponíveis

Todas as extensões são sincronizadas para repositórios privados:

- `igniter-js-gemini-extension`
- `shadcn-ui-gemini-extension`
- `nextjs-gemini-extension`
- `prisma-gemini-extension`
- `vercel-gemini-extension`
- `typescript-gemini-extension`
- `bun-gemini-extension`
- `playwright-gemini-extension`
- `postgres-gemini-extension`
- `hostinger-gemini-extension`
- `gcloud-gemini-extension`

## 🔧 Scripts

### sync-to-private-repos.sh

Sincroniza extensões do monorepo para repositórios privados individuais.

**Uso**:
```bash
# Sincronizar uma extensão
./scripts/sync-to-private-repos.sh igniter-js

# Sincronizar todas
./scripts/sync-to-private-repos.sh --all
```

**O que faz**:
1. Clona o repositório privado (ou cria se não existir)
2. Copia arquivos do monorepo para o repo privado
3. Faz commit e push das mudanças
4. Repositório privado atualizado automaticamente

## ✅ Vantagens desta Estratégia

1. **Fonte Única**: `exspace-extensions` é a fonte de verdade
2. **Atualização Centralizada**: Atualizar em um lugar, sincronizar para todos
3. **Instalação Remota**: Repos privados permitem instalação via GitHub URL
4. **Versionamento**: Cada repo privado mantém seu próprio histórico
5. **Automação**: Script facilita sincronização

## 📝 Notas

- Repositórios privados são criados automaticamente se não existirem
- Script usa `GITHUB_TOKEN_EXZOSVERSE_SPACE` do `.env`
- Sincronização preserva histórico Git dos repos privados
- Mudanças no monorepo são propagadas para todos os repos privados

---

**Mantido por**: ExzosVerse-Space  
**Última atualização**: 2025-12-02

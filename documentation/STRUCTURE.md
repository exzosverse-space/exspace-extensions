# Estrutura do Repositório ExSpace Extensions

Este documento descreve a organização e estrutura do repositório de extensões.

## 📁 Estrutura de Diretórios

```
exspace-extensions/
├── gemini/                    # Extensões para Gemini CLI
│   ├── README.md             # Índice de extensões Gemini
│   └── igniter-js/           # Extensão Igniter.js
│       ├── gemini-extension.json
│       ├── README.md
│       ├── GEMINI.md
│       └── ...
├── cursor/                    # Extensões para Cursor IDE
│   └── README.md
├── vscode/                    # Extensões para VS Code
│   └── README.md
├── claude/                    # Extensões para Claude
│   └── README.md
├── documentation/             # Documentação geral
│   └── STRUCTURE.md          # Este arquivo
├── README.md                  # README principal
├── CONTRIBUTING.md            # Guia de contribuição
├── LICENSE                    # Licença MIT
└── .gitignore                 # Arquivos ignorados
```

## 🎯 Organização por Stack

### Gemini CLI (`gemini/`)
Extensões para o [Gemini CLI](https://geminicli.com/).

**Estrutura**:
```
gemini/
  extension-name/
    ├── gemini-extension.json  # Manifesto obrigatório
    ├── README.md              # Documentação
    ├── GEMINI.md              # Guias para IA (opcional)
    └── ...
```

**Extensões Disponíveis**:
- `igniter-js/` - Integração do framework Igniter.js

### Cursor IDE (`cursor/`)
Extensões e configurações para Cursor IDE.

**Estrutura**:
```
cursor/
  extension-name/
    ├── README.md
    ├── .cursor/              # Configurações Cursor
    └── ...
```

### VS Code (`vscode/`)
Extensões para Visual Studio Code.

**Estrutura**:
```
vscode/
  extension-name/
    ├── package.json          # Manifesto da extensão
    ├── README.md
    └── ...
```

### Claude (`claude/`)
Extensões e configurações para Claude.

**Estrutura**:
```
claude/
  extension-name/
    ├── README.md
    └── ...
```

## 📝 Convenções de Nomenclatura

### Diretórios
- Use **kebab-case** para nomes de diretórios
- Exemplos: `igniter-js`, `nextjs-utils`, `react-tools`

### Arquivos
- **README.md**: Sempre em maiúsculas
- **LICENSE**: Sempre em maiúsculas
- Outros arquivos: seguir convenção do stack

## 🔗 Links de Instalação

### Gemini CLI
```bash
# Instalar do GitHub
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/extension-name --consent

# Instalar localmente
git clone https://github.com/exzosverse-space/exspace-extensions.git
cd exspace-extensions/gemini/extension-name
gemini extensions install . --consent
```

## 📚 Documentação

Cada extensão deve ter:
- **README.md**: Documentação completa
- **LICENSE**: Licença clara
- **Exemplos**: Quando aplicável

## 🔄 Manutenção

- Mantenha READMEs atualizados
- Versionamento semântico
- Changelog quando necessário
- Testes quando possível

---

**Última atualização**: 2025-12-02


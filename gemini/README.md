# Gemini CLI Extensions

Extensões para o [Gemini CLI](https://geminicli.com/) organizadas por framework e funcionalidade.

## 📦 Extensões Disponíveis

### Frameworks & Runtimes
- **[Igniter.js](./igniter-js/)** - Integração completa do framework Igniter.js com Gemini CLI
- **[Next.js](./nextjs/)** - Framework React para produção
- **[Bun](./bun/)** - Runtime JavaScript rápido e moderno
- **[TypeScript](./typescript/)** - Type safety e análise de tipos

### UI & Components
- **[shadcn/ui](./shadcn-ui/)** - Biblioteca de componentes React

### Database & ORM
- **[Prisma](./prisma/)** - ORM de próxima geração
- **[PostgreSQL](./postgres/)** - Ferramentas customizadas para PostgreSQL

### Testing
- **[Playwright](./playwright/)** - Testes E2E e automação de browser

### Deployment & Hosting
- **[Vercel](./vercel/)** - Plataforma de deploy e hospedagem
- **[Hostinger](./hostinger/)** - Gerenciamento de VPS e hospedagem
- **[Google Cloud](./gcloud/)** - Ferramentas estendidas para GCP

## 🚀 Instalação

### Instalar uma Extensão Específica

```bash
# Igniter.js
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/igniter-js --consent

# Next.js
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/nextjs --consent

# shadcn/ui
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/shadcn-ui --consent

# Prisma
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/prisma --consent

# Vercel
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/vercel --consent

# E assim por diante...
```

### Instalar Localmente

```bash
git clone https://github.com/exzosverse-space/exspace-extensions.git
cd exspace-extensions/gemini/[extension-name]
gemini extensions install . --consent
```

## 📚 Documentação

Cada extensão possui sua própria documentação. Consulte o README.md de cada extensão para mais detalhes.

## 🤝 Contribuindo

Para adicionar uma nova extensão:

1. Crie uma pasta com o nome da extensão em `gemini/`
2. Adicione todos os arquivos necessários
3. Inclua um README.md com documentação
4. Atualize este README.md
5. Abra um Pull Request

## 📝 Estrutura de Extensão

Uma extensão Gemini CLI deve conter:

```
extension-name/
├── gemini-extension.json  # Manifesto da extensão (obrigatório)
├── README.md              # Documentação
├── GEMINI.md              # Guias para assistentes de IA (opcional)
├── LICENSE                # Licença
└── ...                    # Outros arquivos necessários
```

---

**Última atualização**: 2025-12-02


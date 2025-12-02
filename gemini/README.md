# Gemini CLI Extensions

Extensões para o [Gemini CLI](https://geminicli.com/) organizadas por framework e funcionalidade.

## 📦 Extensões Disponíveis

### Igniter.js
- **[Igniter.js Extension](./igniter-js/)** - Integração completa do framework Igniter.js com Gemini CLI

## 🚀 Instalação

### Igniter.js Extension

```bash
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/igniter-js --consent
```

Ou instalar localmente:

```bash
git clone https://github.com/exzosverse-space/exspace-extensions.git
cd exspace-extensions/gemini/igniter-js
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


# shadcn/ui Extension for Gemini CLI

[![Version](https://img.shields.io/npm/v/shadcn.svg)](https://www.npmjs.com/package/shadcn)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Integrate [shadcn/ui](https://ui.shadcn.com) component library with Gemini CLI for AI-powered UI component management and generation.

## 🌟 Features

- **Component Installation**: Install shadcn/ui components directly from Gemini CLI
- **Component Search**: Search and discover available components
- **Code Generation**: Generate component code with AI assistance
- **Component Management**: List, update, and manage installed components
- **Registry Integration**: Access shadcn/ui component registry

## 📋 Prerequisites

- [Gemini CLI](https://geminicli.com/) installed
- [Node.js](https://nodejs.org/) >= 18.0.0
- A project with shadcn/ui configured (or create one)

## 🚀 Installation

### Install from GitHub

```bash
gemini extensions install https://github.com/exzosverse-space/exspace-extensions/tree/main/gemini/shadcn-ui --consent
```

### Enable the Extension

```bash
gemini extensions enable shadcn-ui
```

## 🎯 Usage

Once installed, you can use natural language to interact with shadcn/ui:

### Install Components

```
> Install the button component from shadcn/ui
> Add a card component to my project
> Install form components (input, select, textarea)
```

### Search Components

```
> Show me all available form components
> List all button variants
> What components are available for data display?
```

### Generate Component Code

```
> Generate a login form using shadcn/ui components
> Create a data table with shadcn/ui
> Build a dashboard layout with shadcn/ui components
```

## 🔧 Configuration

The extension uses shadcn CLI configuration from your project's `components.json`:

```json
{
  "$schema": "https://ui.shadcn.com/schema.json",
  "style": "default",
  "rsc": true,
  "tsx": true,
  "tailwind": {
    "config": "tailwind.config.ts",
    "css": "src/app/globals.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}
```

## 📚 What is shadcn/ui?

shadcn/ui is a collection of re-usable components built with Radix UI and Tailwind CSS. It's not a component library—it's a collection of components that you can copy and paste into your apps.

**Key Features**:
- **Copy and paste** components into your project
- **Fully customizable** with Tailwind CSS
- **Accessible** components built on Radix UI
- **TypeScript** support
- **No runtime dependencies** (except React)

Learn more at [ui.shadcn.com](https://ui.shadcn.com)

## 🛠️ MCP Server

This extension uses the shadcn CLI MCP integration, which provides:

- Component installation and management
- Registry access and search
- Component code generation
- Project configuration management

## 📖 Documentation

- [shadcn/ui Documentation](https://ui.shadcn.com/docs)
- [Component Directory](https://ui.shadcn.com/docs/components)
- [Installation Guide](https://ui.shadcn.com/docs/installation)

## 🤝 Contributing

Contributions are welcome! Please read our contributing guidelines and submit pull requests to improve this extension.

## 📝 License

MIT License - see [LICENSE](LICENSE) file for details.

---

**Repository**: [exzosverse-space/exspace-extensions](https://github.com/exzosverse-space/exspace-extensions)  
**Maintained by**: ExzosVerse-Space


# Igniter.js Extension for Gemini CLI

[![Version](https://img.shields.io/npm/v/@igniter-js/mcp-server.svg)](https://www.npmjs.com/package/@igniter-js/mcp-server)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Integrate [Igniter.js](https://igniterjs.com) framework with Gemini CLI for AI-powered full-stack TypeScript development.

## 🌟 Features

- **Type-Safe API Development**: Create controllers, procedures, and features with full TypeScript support
- **Feature Management**: Generate and manage Igniter.js features with AI assistance
- **Code Generation**: Automatically generate controllers, procedures, and types
- **Project Analysis**: Understand your Igniter.js project structure and dependencies
- **Workflow Automation**: Streamline development workflows with AI-powered suggestions

## 📋 Prerequisites

- [Gemini CLI](https://geminicli.com/) installed
- [Bun](https://bun.sh/) (recommended) or Node.js >= 18.0.0
- An Igniter.js project (or create one with `bunx create-igniter-app`)

## 🚀 Installation

### Install from GitHub

```bash
gemini extensions install https://github.com/igniter-js/gemini-extension --consent
```

### Install from Local Path

```bash
gemini extensions install /path/to/igniter-extension --consent
```

### Enable the Extension

```bash
gemini extensions enable igniter-js
```

## 🎯 Usage

Once installed, you can use natural language to interact with your Igniter.js projects:

### Create New Features

```
> Create a new feature called "notifications" with email and SMS capabilities
```

### Generate Controllers

```
> Generate a REST controller for managing user profiles with CRUD operations
```

### Analyze Project Structure

```
> Analyze the current Igniter.js project structure and suggest improvements
```

### Generate Procedures

```
> Create a procedure for processing payments with Stripe integration
```

### Manage Features

```
> List all features in the project and show their dependencies
```

## 🔧 Configuration

The extension supports optional environment variables:

- `GITHUB_TOKEN`: GitHub personal access token for repository operations
- `ENABLE_MEMORY_TOOLS`: Enable memory management tools (default: false)
- `ENABLE_TASK_MANAGEMENT_TOOLS`: Enable task management (default: false)
- `ENABLE_AGENT_DELEGATION_TOOLS`: Enable agent delegation (default: false)

Set these in your shell or `.env` file:

```bash
export GITHUB_TOKEN="your_token_here"
export ENABLE_MEMORY_TOOLS="true"
```

## 📚 What is Igniter.js?

Igniter.js is a modern TypeScript framework for building type-safe, full-stack applications. It provides:

- **End-to-end type safety** from API to frontend
- **Feature-based architecture** for scalable applications
- **Multiple runtime support**: Next.js, Bun, Hono, Express
- **Built-in API documentation** with OpenAPI/Swagger
- **Real-time capabilities** with WebSocket support
- **SaaS Boilerplate** template for rapid SaaS development

Learn more at [igniterjs.com](https://igniterjs.com)

## 🛠️ MCP Server

This extension uses the official `@igniter-js/mcp-server` package, which provides:

- Feature generation and management
- Controller and procedure creation
- Type generation and validation
- Project structure analysis
- Code generation utilities
- Memory management (optional)
- Task management (optional)
- Agent delegation (optional)

## 📖 Documentation

- [Igniter.js Documentation](https://igniterjs.com/docs)
- [MCP Server Documentation](https://github.com/igniter-js/mcp-server)
- [SaaS Boilerplate Template](https://igniterjs.com/templates/saas-boilerplate)

## 🤝 Contributing

Contributions are welcome! Please read our contributing guidelines and submit pull requests to improve this extension.

## 📝 License

MIT License - see [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built for the [Igniter.js](https://igniterjs.com) community
- Powered by [Gemini CLI](https://geminicli.com/)
- Uses [Model Context Protocol](https://modelcontextprotocol.io/)


# shadcn/ui Development Guidelines for Gemini CLI

This document provides guidelines for using the shadcn/ui MCP server when working with shadcn/ui components.

## MANDATORY WORKFLOW FOR ALL SHADCN/UI-RELATED REQUESTS

**Before responding to ANY request involving shadcn/ui, you MUST complete these steps in order:**

### Step 1: Check Project Configuration (First time only)
- [ ] Verify project has `components.json` configured
- [ ] Check if shadcn/ui is initialized
- [ ] Verify Tailwind CSS is configured
- [ ] Check component installation path

### Step 2: Gather Context (Every request)
- [ ] If the request mentions specific components, use MCP tools to:
  - Search available components
  - Check if component is already installed
  - View component examples
- [ ] Review project structure before installing
- [ ] Understand current component usage

### Step 3: Implementation
- [ ] Only after completing steps 1-2, proceed with installation
- [ ] Use shadcn CLI commands via MCP tools
- [ ] Follow shadcn/ui patterns and conventions
- [ ] Ensure proper imports and styling

**IMPORTANT: If you skip any of these steps, your implementation will likely be incorrect or not follow shadcn/ui best practices.**

## shadcn/ui MCP Tools Reference

### Component Management
- `list_components`: List all available components in registry
- `search_components`: Search components by name or category
- `install_component`: Install a component from registry
- `get_component_code`: Get component source code
- `get_component_examples`: Get usage examples for a component

### Project Management
- `check_project_config`: Verify shadcn/ui project configuration
- `list_installed_components`: List components already installed
- `update_component`: Update an installed component

## Implementation Rules

1. **Check Before Installing**: Always verify if component is already installed
2. **Follow Project Structure**: Use paths from `components.json`
3. **Use MCP Tools**: Prefer MCP tools over manual CLI commands
4. **Respect Conventions**: Follow shadcn/ui naming and structure conventions
5. **Validate Configuration**: Ensure `components.json` exists and is valid

## Common Patterns

### Installing a Component

```bash
# 1. Check if component exists
# 2. Use install_component MCP tool
# 3. Verify installation
# 4. Update imports if needed
```

### Generating Component Code

```bash
# 1. Search for appropriate components
# 2. Get component code and examples
# 3. Customize for specific use case
# 4. Integrate into project
```

## Common Mistakes to Avoid

- ❌ Installing components without checking project config
- ❌ Not verifying if component already exists
- ❌ Ignoring `components.json` configuration
- ❌ Not checking Tailwind CSS setup
- ❌ Installing components in wrong directory
- ❌ Missing required dependencies

## Example Workflow

When user asks: "Install a button component"

1. ✓ Check if `components.json` exists
2. ✓ Verify shadcn/ui is initialized
3. ✓ Check if button is already installed
4. ✓ Use `install_component` MCP tool
5. ✓ Verify installation
6. ✓ Show usage example

## shadcn/ui Key Concepts

### Components
Components are copied into your project, not installed as dependencies:
- Located in `src/components/ui/` (or configured path)
- Fully customizable
- No runtime dependencies

### Configuration
`components.json` controls:
- Component installation path
- Tailwind CSS configuration
- TypeScript/JSX settings
- Style preferences

### Registry
shadcn/ui uses a registry system:
- Default: https://ui.shadcn.com
- Custom registries supported
- Component metadata and code

## Resources

- [shadcn/ui Documentation](https://ui.shadcn.com/docs)
- [Component Directory](https://ui.shadcn.com/docs/components)
- [Installation Guide](https://ui.shadcn.com/docs/installation)
- [GitHub Repository](https://github.com/shadcn-ui/ui)


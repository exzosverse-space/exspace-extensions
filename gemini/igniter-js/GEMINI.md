# Igniter.js Development Guidelines for Gemini CLI

This document provides guidelines for using the Igniter.js MCP server when building Igniter.js applications with Gemini CLI.

## MANDATORY WORKFLOW FOR ALL IGNITER.JS-RELATED REQUESTS

**Before responding to ANY request involving Igniter.js, you MUST complete these steps in order:**

### Step 1: Understand Project Structure (First time only)
- [ ] Check if the project is an Igniter.js project (look for `igniter.ts`, `@igniter-js/core` in package.json)
- [ ] Understand the feature-based architecture
- [ ] Identify the project type (Next.js, Bun, Hono, Express)

### Step 2: Gather Context (Every request)
- [ ] If the request mentions specific features, use MCP tools to:
  - List existing features
  - Analyze feature structure
  - Check dependencies
- [ ] Review project structure before making changes
- [ ] Understand the current codebase patterns

### Step 3: Implementation
- [ ] Only after completing steps 1-2, proceed with the actual implementation
- [ ] Follow Igniter.js conventions and patterns
- [ ] Use the appropriate MCP tools as outlined below
- [ ] Ensure type safety throughout

**IMPORTANT: If you skip any of these steps, your implementation will likely be incorrect or not follow Igniter.js best practices.**

## Igniter.js MCP Tools Reference

### Feature Management
- `list_features`: List all features in the project
- `create_feature`: Create a new feature with proper structure
- `analyze_feature`: Analyze a specific feature's structure and dependencies

### Code Generation
- `generate_controller`: Generate a controller for a feature
- `generate_procedure`: Generate a procedure with type safety
- `generate_types`: Generate TypeScript types for procedures

### Project Analysis
- `analyze_project`: Understand project structure and dependencies
- `validate_project`: Validate Igniter.js project configuration
- `get_project_info`: Get project metadata and configuration

### Memory Management (Optional)
- `store_memory`: Store project-specific memories
- `search_memories`: Search stored memories
- `retrieve_memory`: Retrieve specific memory

### Task Management (Optional)
- `create_task`: Create development tasks
- `list_tasks`: List all tasks
- `update_task_status`: Update task status

## Implementation Rules

1. **Feature-Based Architecture**: Always organize code by features, not by technical layers
2. **Type Safety First**: Ensure all procedures, controllers, and types are properly typed
3. **Use MCP Tools**: Prefer MCP tools over manual code generation when possible
4. **Follow Conventions**: Adhere to Igniter.js naming and structure conventions
5. **Validate Before Acting**: Always check existing code structure before making changes

## Common Patterns

### Creating a New Feature

```typescript
// 1. Use MCP tool to create feature structure
// 2. Generate controller
// 3. Generate procedures
// 4. Generate types
// 5. Wire up in main router
```

### Adding a Controller

```typescript
// 1. Check existing controllers in the feature
// 2. Use generate_controller MCP tool
// 3. Follow the pattern: feature/controllers/feature.controller.ts
// 4. Export from feature index
```

### Creating Procedures

```typescript
// 1. Define procedure schema with Zod
// 2. Use generate_procedure MCP tool
// 3. Ensure type safety end-to-end
// 4. Export from procedures/index.ts
```

## Common Mistakes to Avoid

- ❌ Creating features without using the feature generator
- ❌ Mixing technical layers instead of feature-based organization
- ❌ Ignoring type safety in procedures
- ❌ Not following Igniter.js naming conventions
- ❌ Creating controllers without proper error handling
- ❌ Not exporting from feature index files

## Example Workflow

When user asks: "Create a notifications feature with email and SMS"

1. ✓ Check if project is Igniter.js (verify package.json, igniter.ts)
2. ✓ List existing features to understand structure
3. ✓ Use `create_feature` MCP tool with name "notifications"
4. ✓ Generate controller for notifications
5. ✓ Generate procedures for email and SMS
6. ✓ Generate types for notification payloads
7. ✓ Wire up in main router
8. ✓ Validate types and structure

## Igniter.js Key Concepts

### Features
Features are self-contained modules that include:
- Controllers (API endpoints)
- Procedures (business logic)
- Types (TypeScript definitions)
- Tests (optional)

### Controllers
Controllers define API routes and handle HTTP requests:
```typescript
export const NotificationController = igniter.controller({
  // Route definitions
});
```

### Procedures
Procedures contain business logic with full type safety:
```typescript
export const sendEmail = igniter.procedure({
  // Procedure definition with Zod schema
});
```

### Type Safety
Igniter.js provides end-to-end type safety from API to frontend, ensuring type consistency across the entire stack.

## Project Types

Igniter.js supports multiple runtimes:
- **Next.js**: Full-stack React applications
- **Bun**: High-performance JavaScript runtime
- **Hono**: Ultra-fast web framework
- **Express**: Traditional Node.js framework

## Resources

- [Igniter.js Documentation](https://igniterjs.com/docs)
- [SaaS Boilerplate](https://igniterjs.com/templates/saas-boilerplate)
- [GitHub Repository](https://github.com/igniter-js/igniter-js)


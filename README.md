# Claude Template Repo (.claude)

This repository is a `.claude` template designed to optimize and extend Claude's capabilities through various configurations in the `.claude` directory. This allows Claude to accurately follow project standards, execute specific commands, and intercept unsafe behaviors when handling project-related tasks.

## .claude Directory Structure and Responsibilities

The following section details the functions of the `.claude` directory and its subfolders:

### 1. `agents/` (AI Agents)
- **Responsibility**: Define AI agents with specific roles, tool permissions, and dedicated models.
- **Function**: Configure Claude as a specialized expert (e.g., `code-reviewer.md` for a code reviewer), providing a more professional perspective and task-oriented behavior when invoked.

### 2. `commands/` (Custom Commands)
- **Responsibility**: Define reusable task workflows or quick commands.
- **Function**: Encapsulate common command operations (e.g., `explain-file.md` for explaining files, `git-commit.md` for automating Git commit messages). Claude executes tasks according to the steps defined in these files and can accept parameters (e.g., `$ARGUMENT`).

### 3. `hooks/` (Hooks)
- **Responsibility**: Contain executable scripts or commands that intercept or modify behavior before or after tool execution.
- **Function**: Implement project security policies or behavior restrictions. For example, `block-rm.sh` can intercept and block Bash commands containing `rm` to prevent destructive deletion operations. These hooks must be registered in `settings.json` and associated with specific tool events (e.g., `PreToolUse`).

### 4. `rules/` (Project Rules)
- **Responsibility**: Store project development specifications, style guides, and architectural requirements.
- **Function**: Provide Markdown files (e.g., `code-style.md`, `software-architecture.md`, `web-api.md`) for Claude's reference, ensuring that Claude strictly follows existing project standards when generating code, reviewing, or providing suggestions.

### 5. `skills/` (Behavioral Skills)
- **Responsibility**: Define high-quality behavioral patterns that Claude should exhibit when performing tasks or interacting with users.
- **Function**: Enhance interaction quality and task success rates. Typically organized in folders (e.g., `clarify-before-doing/` containing `SKILL.md`), requiring Claude to clarify intent, confirm constraints, and break down steps before execution, ensuring user consent is obtained.

### 6. `settings.json` (Core Settings)
- **Responsibility**: Define project-wide permissions and behavior interception configurations.
- **Function**:
  - **Permissions**: Explicitly allow or deny specific operations (e.g., denying `rm *` or `git push`).
  - **Hooks**: Bind scripts in the `hooks/` directory to specific tool call events for automated behavior filtering.

---
With this configuration, you can inject project knowledge and constraints into Claude's operations, creating a safer and more project-aware collaborative environment.

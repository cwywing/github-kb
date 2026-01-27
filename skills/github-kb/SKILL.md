# GitHub Knowledge Base

Manage your local GitHub knowledge base and search GitHub repositories using the gh CLI.

## Capabilities

- **Clone repositories** to your knowledge base directory
- **Search GitHub** repositories, issues, and PRs
- **Maintain project catalog** in CLAUDE.md
- **List local projects** in your knowledge base

## Usage

### Clone a Repository
```
Clone <repository-url> [directory-name]
```
Clones a GitHub repository to your knowledge base directory (`~/github`).

Example:
```
Clone anthropic/claude-code
```

### Search GitHub
```
Search GitHub for <query>
```
Searches repositories, issues, or pull requests.

Examples:
```
Search GitHub for claude-code
Search GitHub for language:python stars:>1000
Search GitHub issues in anthropic/claude-code
```

### List Projects
```
List my GitHub projects
```
Shows all projects in your local knowledge base.

### Add Project to Catalog
```
Add <project-name> to catalog
```
Adds a project to the CLAUDE.md catalog with a description.

## Configuration

The knowledge base directory is set to: `~/github`

To change it, update the `GITHUB_KB_DIR` variable in the skill script.

## Requirements

- `gh` CLI tool (install with: `curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && sudo apt update && sudo apt install gh`)
- Run `gh auth login` to authenticate

## Local Knowledge Base Workflow

### Cloning a New Repository
1. User asks to clone a repository
2. **Clone to KB directory**:
   ```bash
   git clone https://github.com/<owner>/<name>.git ~/github/<name>
   ```
3. **Generate project description**: Read README or key files to understand the project
4. **Update CLAUDE.md**: Add entry for the new repo following the existing format:
   ```markdown
   ### [<name>](/<name>)
   Brief one-line description of what the project does.

   Additional context if useful (key features, tech stack, etc.).
   ```
5. **Confirm completion**: Tell user the repo was cloned and where to find it

### Default Clone Location

If user says "clone X" without specifying a directory, default to `~/github`.

## CLAUDE.md Format

The catalog file follows this structure:

```markdown
# Claude Code 知识库

本目录包含 X 个 GitHub 项目，涵盖...领域概述。

---

## Category Name

### [project-name](/project-name)
Brief description of the project.
```

Maintain categorization and consistent formatting when updating.

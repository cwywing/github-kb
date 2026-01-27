# GitHub Knowledge Base

A simple skill for Claude Code to manage your local GitHub knowledge base.

## Purpose

This project allows you to:
- Tell Claude Code where your GitHub projects are stored
- Use `gh` CLI to search and interact with GitHub
- Clone repositories to a consistent location
- Maintain a catalog of your projects in CLAUDE.md

## Setup

### 1. Install GitHub CLI

Run the installation script:
```bash
bash skills/github-kb/install-gh.sh
```

Or manually install from: https://cli.github.com/

### 2. Authenticate

```bash
gh auth login
```

Follow the prompts to authenticate with your GitHub account.

### 3. Configure Your Knowledge Base Directory

The default directory is `~/github`. To change it, edit `skills/github-kb/SKILL.md` and update the `GITHUB_KB_DIR` variable.

### 4. Enable the Skill

The skill documentation is in `skills/github-kb/SKILL.md`. Claude Code will automatically read this when you ask about GitHub repositories.

## Usage Examples

### Clone a Repository
```
Please clone the anthropic/claude-code repository
```

### Search GitHub
```
Search GitHub for repositories about "AI coding"
```

### List Your Projects
```
What projects do I have in my knowledge base?
```

## Project Structure

```
.
├── .claude/
│   └── settings.local.json    # Claude Code settings
├── skills/
│   └── github-kb/
│       ├── SKILL.md           # Skill documentation
│       └── install-gh.sh      # GitHub CLI installer
├── CLAUDE.md                  # Project catalog
└── README.md                  # This file
```

## Usage on Different Servers

1. Clone this repository to each server
2. Run `bash skills/github-kb/install-gh.sh` (if needed)
3. Run `gh auth login` to authenticate
4. Start asking questions about GitHub!

## License

MIT

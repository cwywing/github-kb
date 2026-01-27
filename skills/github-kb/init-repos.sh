#!/bin/bash

# Initialize AI Knowledge Base with Recommended Repositories
# This script clones the recommended AI repositories to your knowledge base

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Default knowledge base directory
KB_DIR="${GITHUB_KB_DIR:-$HOME/github}"

echo "========================================"
echo "  AI Knowledge Base Initializer"
echo "========================================"
echo ""
echo "Knowledge Base Directory: $KB_DIR"
echo ""

# Create directory if it doesn't exist
if [ ! -d "$KB_DIR" ]; then
    echo -e "${YELLOW}Creating knowledge base directory...${NC}"
    mkdir -p "$KB_DIR"
fi

# Change to knowledge base directory
cd "$KB_DIR"

# List of recommended repositories
declare -A REPOS=(
    ["AI & Assistants/clawdbot"]="clawdbot/clawdbot"
    ["AI & Assistants/open-interpreter"]="OpenInterpreter/open-interpreter"
    ["AI Coding Agents/oh-my-opencode"]="code-yeongyu/oh-my-opencode"
    ["LLM Frameworks/langchain"]="langchain-ai/langchain"
    ["LLM Frameworks/transformers"]="huggingface/transformers"
    ["Development Tools/llama.cpp"]="ggerganov/llama.cpp"
)

echo -e "${GREEN}Cloning recommended repositories...${NC}"
echo ""

# Clone each repository
for category_path in "${!REPOS[@]}"; do
    repo="${REPOS[$category_path]}"
    repo_name=$(basename "$repo")

    # Check if already cloned
    if [ -d "$KB_DIR/$repo_name" ]; then
        echo -e "${YELLOW}⚠${NC} $repo_name already exists, skipping..."
    else
        echo -e "${GREEN}→${NC} Cloning $repo_name..."
        if gh repo clone "$repo" "$repo_name" 2>/dev/null; then
            echo -e "${GREEN}✓${NC} $repo_name cloned successfully"
        else
            echo -e "${RED}✗${NC} Failed to clone $repo_name"
        fi
    fi
done

echo ""
echo "========================================"
echo -e "${GREEN}✓ Initialization complete!${NC}"
echo "========================================"
echo ""
echo "Next steps:"
echo "1. Review the cloned repositories in: $KB_DIR"
echo "2. Update CLAUDE.md to reflect your knowledge base"
echo "3. Start asking Claude questions about AI tools!"
echo ""
echo "Example questions:"
echo "  - 'Analyze the architecture of clawdbot and opencode'"
echo "  - 'I want to build an AI code reviewer, what do you recommend?'"
echo "  - 'Compare langchain and direct API usage for my use case'"
echo ""

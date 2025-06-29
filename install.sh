#!/bin/bash

# Claude Code Commands Installation Script

set -e

echo "Installing Claude Code Commands..."

# Create the ~/.claude/commands directory if it doesn't exist
mkdir -p ~/.claude/commands

# Copy all command files
echo "Copying command files..."
cp -r .claude/commands/* ~/.claude/commands/

# Count the files copied
COMMAND_COUNT=$(find .claude/commands -name "*.md" | wc -l)
PATTERN_COUNT=$(find .claude/commands/shared -name "*.yml" | wc -l)

echo "✓ Installation complete!"
echo "  - Copied $COMMAND_COUNT command files"
echo "  - Copied $PATTERN_COUNT shared pattern files"
echo ""
echo "Commands installed to: ~/.claude/commands/"
echo ""
echo "You can now use these commands in your Claude Code sessions."
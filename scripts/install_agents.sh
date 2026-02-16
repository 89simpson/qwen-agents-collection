#!/bin/bash

# Qwen Agents Installation Script
# This script copies all agent files to the Qwen agents directory

set -e  # Exit immediately if a command exits with a non-zero status

# Define the source and destination directories
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/agents"
QWEN_AGENTS_DIR="$HOME/.qwen/agents"

# Print welcome message
echo "Qwen Agents Installation Script"
echo "==============================="
echo "Source directory: $SOURCE_DIR"
echo "Destination: $QWEN_AGENTS_DIR"
echo ""

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

# Create destination directory if it doesn't exist
mkdir -p "$QWEN_AGENTS_DIR"

# Copy agent files with .md extension
echo "Copying agent files with .md extension..."
cp "$SOURCE_DIR"/*.md "$QWEN_AGENTS_DIR"/

# Count copied files
COPIED_COUNT=$(ls "$SOURCE_DIR"/*.md | wc -l)
echo "Successfully copied $COPIED_COUNT agent files to $QWEN_AGENTS_DIR"

# Verify the copy
INSTALLED_COUNT=$(ls "$QWEN_AGENTS_DIR"/*.md 2>/dev/null | wc -l || echo 0)
echo "Verified: $INSTALLED_COUNT agent files are now in the Qwen agents directory"

echo ""
echo "Installation complete!"
echo "Please restart Qwen to load the new agents."
echo ""
echo "To verify installation, you can check the agents directory:"
echo "ls -la $QWEN_AGENTS_DIR"
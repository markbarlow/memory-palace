#!/bin/bash
# Sync blog content from Obsidian for local preview and publishing

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OBSIDIAN_CONTENT="/Users/Mark/Github/Obsidian/Writing/memory-palace"
MEMORY_PALACE="$SCRIPT_DIR"

# Ensure target directories exist
mkdir -p "$MEMORY_PALACE/_posts"
mkdir -p "$MEMORY_PALACE/_drafts"
mkdir -p "$MEMORY_PALACE/assets/images/posts/blog"

# Sync posts
rsync -av --delete --exclude '.DS_Store' \
    "$OBSIDIAN_CONTENT/_posts/" "$MEMORY_PALACE/_posts/"

# Sync drafts
rsync -av --delete --exclude '.DS_Store' \
    "$OBSIDIAN_CONTENT/_drafts/" "$MEMORY_PALACE/_drafts/"

# Sync images
rsync -av --delete --exclude '.DS_Store' \
    "$OBSIDIAN_CONTENT/_assets/" "$MEMORY_PALACE/assets/images/posts/blog/"

echo "✓ Content synced from Obsidian"

#!/bin/bash

# Script to conditionally commit and push OpenAPI docs updates
# Exits successfully if no changes, fails if git operations fail

set -e  # Exit on any error except where explicitly handled

echo "Adding all files to git..."
git add .

# Check if there are any staged changes
if git diff --cached --quiet; then
    echo "No changes to commit. Repository is up to date."
    exit 0
fi

echo "Changes detected. Committing..."
git commit -m "Update OpenAPI docs"

echo "Pushing to origin main..."
git push origin main

echo "Successfully updated and pushed OpenAPI docs!" 
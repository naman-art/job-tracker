#!/bin/bash
# JobTrack — First-time setup script
# Run this once after importing the project: bash setup.sh

set -e
echo "=== JobTrack Setup ==="

# Ensure pnpm is available
if ! command -v pnpm &> /dev/null; then
  echo "Installing pnpm..."
  npm install -g pnpm
fi

echo "Installing dependencies..."
pnpm install

echo "Running database migration..."
pnpm --filter @workspace/db run push

echo ""
echo "Setup complete!"
echo ""
echo "To start the app, run these two commands in separate Shell tabs:"
echo "  pnpm --filter @workspace/api-server run dev"
echo "  pnpm --filter @workspace/job-tracker run dev"
echo ""
echo "Or configure them as workflows in the Replit Workflows panel."

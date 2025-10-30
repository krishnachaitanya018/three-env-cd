#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT="${1:-dev}"
ARTIFACT_PATH="${2:-artifact/index.txt}"

echo "=== Starting deployment to: $ENVIRONMENT ==="
echo "Using artifact: $ARTIFACT_PATH"

# Here’s where real deploy commands would go.
# For demo, just print a message and write a "deployed" file per env.
mkdir -p "deployed/$ENVIRONMENT"
cp "$ARTIFACT_PATH" "deployed/$ENVIRONMENT/index.txt"

echo "Deployed to $ENVIRONMENT at $(date)" | tee "deployed/$ENVIRONMENT/deploy.log"
ls -la "deployed/$ENVIRONMENT"

echo "=== Deployment to $ENVIRONMENT complete ==="

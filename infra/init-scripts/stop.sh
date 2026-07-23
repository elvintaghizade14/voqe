#!/bin/bash

echo "Stopping Docker Infrastructure..."
docker compose -f ../docker-compose.yml down --remove-orphans -v
echo "Environment shutdown complete!"

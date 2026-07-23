#!/bin/bash

set -e

echo "[1/4] [START] Force-killing any Zombie containers..."
docker rm -f voqe-service || true
echo "[1/4] [FINISH] Force-killed any Zombie containers."

echo "[2/4] [START] Cleaning up networks and volumes..."
docker compose -f ../docker-compose.yml down --remove-orphans
echo "[2/4] [FINISHED] Cleaned up networks and volumes."

echo "[3/4] [START] Building project with Gradle..."
./gradlew clean build test jacocoTestReport -x javadoc
echo "[3/4] [FINISHED] Built project with Gradle."

echo "[4/4] [START] Initializing Docker Infrastructure..."
docker compose -f ../docker-compose.yml up -d --build
echo "[4/4] [FINISHED] Initialized Docker Infrastructure."

echo "[5/5] [START] Tailing logs (Press Ctrl+C to stop watching)..."
docker compose -f ../docker-compose.yml logs -f

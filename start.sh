#!/bin/bash
set -e

echo "Starting webtop via Docker Compose..."
docker compose up -d

echo ""
echo "Webtop is starting up!"
echo "Once the container is running, look for the port forwarding notification"
echo "in VS Code / Codespaces and click 'Open in Browser' to access your desktop."
echo ""
echo "Ports forwarded:"
echo "  3000 - HTTP  (http://localhost:3000)"
echo "  3001 - HTTPS (https://localhost:3001)"
echo ""
echo "To stop webtop, run: docker compose down"

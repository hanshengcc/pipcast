#!/bin/bash
# PipCast Local Server Launcher (macOS)
# Double-click this file in Finder or run in Terminal

cd "$(dirname "$0")"

PORT=8000
while lsof -iTCP:$PORT -sTCP:LISTEN >/dev/null 2>&1; do
    PORT=$((PORT + 1))
done

echo "=================================================="
echo "  🚀 Starting PipCast Local Studio Server..."
echo "  🌐 Local URL: http://localhost:$PORT"
echo "  💡 Chrome treats localhost as a full Secure Context"
echo "     with complete WebRTC & Camera permissions."
echo "=================================================="

# Open browser after a brief moment
(sleep 1 && open "http://localhost:$PORT") &

python3 -m http.server $PORT

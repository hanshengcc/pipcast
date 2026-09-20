#!/bin/bash
# PipCast Local Server Launcher (Linux / macOS)
cd "$(dirname "$0")/.." || exit 1

PORT=8000
while command -v lsof >/dev/null 2>&1 && lsof -iTCP:$PORT -sTCP:LISTEN >/dev/null 2>&1; do
    PORT=$((PORT + 1))
done

echo "=================================================="
echo "  🎥 Starting PipCast Local Studio Server..."
echo "  🌐 Local URL: http://localhost:$PORT"
echo "=================================================="

if command -v xdg-open >/dev/null 2>&1; then
    (sleep 1 && xdg-open "http://localhost:$PORT") &
elif command -v open >/dev/null 2>&1; then
    (sleep 1 && open "http://localhost:$PORT") &
fi

if command -v python3 >/dev/null 2>&1; then
    python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
    python -m http.server "$PORT"
elif command -v npx >/dev/null 2>&1; then
    npx serve -l "$PORT" .
else
    echo "Please open index.html directly in your browser."
fi

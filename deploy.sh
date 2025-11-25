#!/bin/bash

echo "🔄 Pulling latest code..."
git pull

echo "🧹 Clearing old logs..."
> output.log    # This clears the file

echo "🛑 Stopping old Python process..."
pkill -f app.py || true

echo "🚀 Starting new Python app..."
nohup python3 app.py > output.log 2>&1 &

echo "✨ Deployment completed!"

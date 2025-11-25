#!/bin/bash

echo "🔄 Pulling latest code..."
git pull

echo "🚀 Restarting Python app..."
pkill -f app.py
nohup python3 app.py > output.log 2>&1 &

echo "✨ Deployment completed!"

nohup /usr/bin/python3 app.py > output.log 2>&1 &
#!/bin/bash

echo "🔄 Pulling latest code..."
git pull

echo "🧹 Clearing old logs..."
> output.log

echo "🛑 Stopping old Python app..."
pkill -9 -f "python3 app.py" || true

echo "🚀 Starting new Python app..."
nohup /usr/bin/python3 app.py > output.log 2>&1 &
echo $! > app.pid

echo "✨ Deployment completed!"

#!/bin/bash
USER="username"
HOST="192.168.1.50"

ssh -T "$USER@$HOST" << 'EOF'
    echo "Starting remote tasks..."
    cd /var/www/html
    git pull origin main
    sudo systemctl restart nginx
    echo "Tasks complete!"
EOF

#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y python-pip nginx
export IP=$(curl ipinfo.io/ip)
sudo echo "server { listen 80; server_name ${IP}; location / { proxy_pass http://127.0.0.1:8000; proxy_set_header Host \$host; proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for; } }" > flaskapp/riikanflask
sudo cp flaskapp/riikanflask /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/riikanflask /etc/nginx/sites-enabled/riikanflask
sudo systemctl reload nginx
pip install flask gunicorn
export FLASK_APP=app.py
gunicorn -w 4 flaskapp/app:app


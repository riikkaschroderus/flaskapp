#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y python-pip nginx
sudo cp flaskapp/riikanflask /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/riikanflask /etc/nginx/sites-enabled/riikanflask
sudo systemctl reload nginx
pip install flask gunicorn
export FLASK_APP=app.py
cd flaskapp
gunicorn -w 4 app:app


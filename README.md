# Flask App on Google Cloud Virtual Machine
This is a simple web application in Python Flask framework. We deploy the app by using Gunicorn and Nginx.

Deployment:

* Create an Ubuntu VM and allow HTTP traffic (port 80)

* ssh into your VM

* Clone the repository:
```
git clone https://github.com/riikkaschroderus/flaskapp
```

* Deploy the app:
```
source flaskapp/deploy.sh
```

* Navigate to your app via the external IP.

* Modify the templates to design your own web app!

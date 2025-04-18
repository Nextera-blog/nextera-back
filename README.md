# Nextera back-end

## Set Django Environnement

- Get python 3.13.3 (https://www.python.org/downloads/release/python-3133/)

### Windows Installation

- create venv in this folder (root) with terminal: `$ python -m venv nextera_venv`

- activate venv with terminal: `$ ./nextera_venv/Scripts/activate`
  !!! Check your terminal to get the proper command (powershell, linux, bash...)
  You should now see the venv on your command line

- update pip to version 25.0.1 terminal: `$ python -m pip install --upgrade pip`
- install dependencies and settings in the venv with terminal: `$ pip install -r requirements.txt`

Your install is done !

When you need to quit the venv do: `$ deactivate`

### MacOS / Linux Installation

- create venv in this folder (root) with terminal: `$ python3 -m venv nextera_venv`

- activate venv with terminal: `$ source nextera_venv/bin/activate`
  !!! Check your terminal to get the proper command (powershell, linux, bash...)
  You should now see the venv on your command line

- update pip to version 25.0.1 terminal: `$ python3 -m pip install --upgrade pip`
- install dependencies and settings in the venv with terminal: `$ pip install -r requirements.txt`

Your install is done !

When you need to quit the venv do: `Ctrl + D`

## Set DB connection

- set all needed information in your local .env
- check connection with `$ python manage.py dbshell`

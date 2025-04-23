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

### Create the Database and Tables

Start by importing the bdd.sql file to create the database and its tables in your MySQL Database Management System (DBMS).

You’ll find the file in: nextera-back/nextera_back_bdd.

⚠️ You can do this easily with your DBMS using the import function. This is strongly recommended to avoid errors.
If for any reason you must do it manually, follow these steps:

- In the root folder ./nextera-back execute: `$ mysql -h localhost -P 3306 -u myuser -p`
  Flags: host(-h value), port(-P value), user(-u value), password check(-p).
  Values are examples here, do not copy paste them and put yours instead.

- The SQL client will ask for your database password. Enter it.

- Now that you are connected to your database, execute in the client: `> SOURCE ./nextera_back_bdd/bdd.sql`
  The database should now be created.

### Set Up Environment Configuration

- Create your .env and .env.local files at the root of the project: ./nextera-back.
  The .env.local file overrides .env, so this is where you should put the values specific to your local configuration.
  An example file is available at: nextera-back/nextera_back_bdd.

⚠️ Ask me for the 'DJANGO_SECRET_KEY', and i'll give you directly.

### Test the Connection

- You can test your database connection with the following command: `$ python manage.py dbshell`

- If the connection is successful, you should see a message similar to this in your terminal:

" Welcome to the MariaDB monitor. Commands end with ; or \g.
Your MySQL connection id is 110
Server version: 8.3.0 MySQL Community Server - GPL "

⚠️ Don’t forget to exit with Ctrl + C.

✅ Django is now connected to your local database.

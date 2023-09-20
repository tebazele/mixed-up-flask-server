# If you've never installed Python before

go to anaconda.com/download and install the anaconda distribution to your computer

# Install python using anaconda installer

(if on Windows, make sure to click "Add Python to Path")

# Once python installed

open a terminal and type python --version (windows) or python3 --version (mac)

# Create a virtual environment

- Open up a cloned project or create a new folder and open in vscode
- In a terminal type

```
python -m venv venv
```

# Activate the venv

- in the terminal for Mac:

```
source venv/bin/activate
```

For PC:

```
venv\Scripts\activate
```

- (venv) should appear in your terminal next to your path

# Install requirements.txt

```
pip install -r requirements.txt
```

# following file structure and set up from

[Flask tutorial](https://flask.palletsprojects.com/en/2.3.x/tutorial/layout/)

# flask run

to run the flask server in debug mode, open a bash terminal and in the top-level directory (mixed-up-flask-server), type

```
./run_debug.sh
```

The dev server automatically re-spins on save

# test routes

The dev server runs on http://localhost:5000, so once the server is running, you can test routes in Postman by hitting that endpoint

# Viewing the sqlite database:

Get the vscode extension SQLite Viewer by Florian Klampfer. When you run the flask app, flask will create a folder called "instance" and will create a local db.sqlite file inside. The instance folder does not get pushed up to github.

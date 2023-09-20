import os
from flask import Flask

# NOTE This is a factory function


def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)
    # This secret key and database will be used in development, this gets pushed up to github so the app can be run immediately by anyone cloning it down
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite')
    )
    # For production, create a config.py file that contains SECRET_KEY and DATABASE variable
    if test_config is None:
        app.config.from_pyfile('config.py', silent=True)

    else:
        app.config.from_mapping(test_config)

    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route('/hello')
    def hello():
        return 'Hello, World!'

    return app

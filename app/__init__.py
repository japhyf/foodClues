import os
from twilio.twiml.messaging_response import MessagingResponse
from geopy.geocoders import Nominatim
from flask import (
    Flask, Blueprint, flash, g, redirect, render_template, request, session, url_for
)


def create_app(test_config=None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite'),
    )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    # a simple page that says hello
    @app.route('/hello')
    def hello():
        return 'Hello, World!'
    
    @app.route('/sms', methods=('GET', 'POST'))
    def send_sms():
        body = request.values.get('Body', None)
        
        # Start our TwiML response
        resp = MessagingResponse()

        # Determine the right reply for this message
        geolocator = Nominatim(user_agent="foodClues")
        location = geolocator.geocode(body)
        strLat = str(location.latitude)
        strLon = str(location.longitude)
        latLongStr = (strLat, strLon)
        concat = ', '.join(latLongStr)
        resp.message(concat)
        if body == 'bye':
            resp.message("Goodbye")

        return str(resp)
        
        
        
    from . import db

    db.init_app(app)
    return app

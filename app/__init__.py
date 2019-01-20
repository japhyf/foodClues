import os
import math
from twilio.twiml.messaging_response import MessagingResponse
from geopy.geocoders import Nominatim
from flask import (
    Flask, Blueprint, flash, g, redirect, render_template, request, session, url_for
)
from app.db import get_db

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
        db = get_db()
        data = db.execute(
            'SELECT Store, Lat, Lon FROM Food'
        ).fetchall()

        body = request.values.get('Body', None)
        geolocator = Nominatim(user_agent="foodClues")
        location = geolocator.geocode(body)
        strLat = str(location.latitude)
        strLon = str(location.longitude)

        MINdist = 10000
        for i in data:
            Store = i['Store']
            Lat = i['Lat']
            Lon = i['Lon']
            dist = math.sqrt(math.pow(strLat - Lat,2)+math.pow(strLon - Lon,2))
            if(dist < MINdist):
                MINdist = dist
                MINpoint = i
        s
        # Start our TwiML response
        resp = MessagingResponse()
        #resp.message(concat)
        resp.message("Thank you for using foodClues! The closest establishment to your location is "+i[Store]+" which is located at "+i[address]);

        if body == 'bye':
            resp.message("I fucked ur mom")

        return str(resp)
        
        
        
    from . import db

    db.init_app(app)
    
    from . import main
    app.register_blueprint(main.bp)
    
    return app

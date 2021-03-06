import os
import math
from twilio.twiml.messaging_response import MessagingResponse
from geopy.geocoders import Nominatim
from flask import (
    Flask, Blueprint, flash, g, redirect, render_template, request, session, url_for
)
from app.db import get_db
from haversine import haversine

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
    @app.route('/')
    def start():
        return redirect(url_for('main.home'))
        
    # a simple page that says hello
    @app.route('/hello')
    def hello():
        return 'Hello, World!'
    
    @app.route('/sms', methods=('GET', 'POST'))
    def send_sms():
        db = get_db()
        body = request.values.get('Body', None)
        # Start our TwiML response
        resp = MessagingResponse()
        geolocator = Nominatim(user_agent="foodClues")
        location = geolocator.geocode(body)
        strLat = location.latitude
        strLon = location.longitude
        data = db.execute(
            'SELECT * FROM Food'
        ).fetchall()
        start = (strLat, strLon)
        minDist = 100000000000000000000000000000
        closestRow = data[0]
        for i in data:
            Lat = i['Lat']
            Lon = i['Lon']
            finish = (Lat, Lon)
            dist = haversine(start, finish, unit='mi')
            if(dist < minDist):
                minDist = dist
                closestRow = i

        resp.message("Thank you for using Food Clues! The closest establishment to your location is "+str(round(minDist, 1))+" miles away. "+closestRow['Store']+" which is located at "+closestRow['Address']);

        if body == 'bye':
            resp.message("I fucked ur mom")

        return str(resp)
        
        
        
    from . import db

    db.init_app(app)
    
    from . import main
    app.register_blueprint(main.bp)
    
    return app

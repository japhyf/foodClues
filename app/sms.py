from twilio.twiml.messaging_response import MessagingResponse
from geopy.geocoders import Nominatim
import functools

from flask import (
    Flask, Blueprint, flash, g, redirect, render_template, request, session, url_for
)

from db import get_db
app = Flask(__name__)

bp = Blueprint('sms', __name__, url_prefix='/sms')

@app.route("/send", methods=['GET', 'POST'])
def incoming_sms():
    #db = get_db()
    #db.execute(
    #    'INSERT INTO Food (Store, Long) VALUES (?, ?)',
    #    ("hello", 233.2323)
    #)
    #db.commit()
    # Get the message the user sent our Twilio number
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

if __name__ == "__main__":
    app.run(debug=True)

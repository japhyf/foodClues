from flask import Flask, request, redirect
from twilio.twiml.messaging_response import MessagingResponse
from geopy.geocoders import Nominatim
app = Flask(__name__)

@app.route("/sms", methods=['GET', 'POST'])
def incoming_sms():
    """Send a dynamic reply to an incoming text message"""
    # Get the message the user sent our Twilio number
    body = request.values.get('Body', None)

    # Start our TwiML response
    resp = MessagingResponse()

    # Determine the right reply for this message
    geolocator = Nominatim(user_agent="foodClues")
    location = geolocator.geocode("175 5th Avenue NYC")
    latLong = (location.latitude, location.longitude)
    if body == 'hello':
        resp.message(', '.join(latLong))
    elif body == 'bye':
        resp.message("Goodbye")

    return str(resp)

if __name__ == "__main__":
    app.run(debug=True)

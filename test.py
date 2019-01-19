from geopy.geocoders import Nominatim

def incoming_sms():
    geolocator = Nominatim(user_agent="foodClues")
    location = geolocator.geocode("175 5th Avenue NYC")
    latLong = (location.latitude, location.longitude)
    print(latLong)

incoming_sms();
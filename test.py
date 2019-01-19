from geopy.geocoders import Nominatim

def incoming_sms():
    geolocator = Nominatim(user_agent="foodClues")
    location = geolocator.geocode("175 5th Avenue NYC")
    strLat = str(location.latitude)
    strLon = str(location.longitude)
    latLongStr = (strLat, strLon)
    print(latLongStr)

incoming_sms();
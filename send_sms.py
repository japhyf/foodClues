from twilio.rest import Client
import os

# Your Account SID from twilio.com/console
account_sid = "AC0541f6408ed92022e819108e2b218b42"
# Your Auth Token from twilio.com/console
auth_token  = os.enviro["TWILIO_AUTH"]

client = Client(account_sid, auth_token)

message = client.messages.create(
            to="+18184880087", 
                from_="+17029048384",
                    body="Hello from Python!")

print(message.sid)

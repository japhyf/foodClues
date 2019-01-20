foodClues:
foodClues is a multifaceted web platform, designed to help those who rely on the Supplemental Nutrition Assistance Program (SNAP)'s food assistance. It has two main features:
(1) An interactive web application with a map of all food locations accepting EBT (Electronic Benefits Transfer, an electronic system allowing recipients to transfer their SNAP benefits as store credit).
(2) A texting service where one sends in their current location, and quickly recieves an SMS containing the address of their nearest EBT.

To install foodClues, make sure to adhere to the requirements.txt file included. This includes python, flask, and sql.

Usage:
To use via mobile, text an address to +1 702 904 8384 to recieve the nearest EBT location.
To use via web browser, visit the host link given by terminal (link noted by "Running on http://[link]" ). Once on the host, scroll through the map from your current location to see various EBT accepting locations near you.

Built with:
	Flask - python microframework
	SQLlit3 - database engine
	twilio API - Communication for SMS, Voice, Video and Authentification
	Google maps API - Map interface

Authors:
	Kai Kondo-Bacon
	Japheth Frolick
	Rebecca Dorn
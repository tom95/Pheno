as yet unclassified
setUp

	super setUp.

	redStyle := BTStyle forAny
		color: Color red.
	
	blueStyle := BTStyle forAny
		color: Color blue.
	
	orangeButtonStyle := (BTStyle for: #button)
		color: Color orange.
	
	previousGlobalStyleContext := BTStyleContext global.
	BTStyleContext global: (BTStyleContext new
		addProvider: (BTStyle forAny backgroundColor: Color yellow) priority: BTStyleContext priorityUser)
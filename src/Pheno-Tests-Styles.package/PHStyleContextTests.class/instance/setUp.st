as yet unclassified
setUp

	super setUp.

	redStyle := PHStyle forAny
		color: Color red.
	
	blueStyle := PHStyle forAny
		color: Color blue.
	
	orangeButtonStyle := (PHStyle for: #button)
		color: Color orange.
	
	previousGlobalStyleContext := PHStyleContext global.
	PHStyleContext global: (PHStyleContext new
		addProvider: (PHStyle forAny backgroundColor: Color yellow) priority: PHStyleContext priorityUser)
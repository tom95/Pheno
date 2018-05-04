as yet unclassified
testSelectorBeatsNoSelector

	context := PHStyleContext new
		addClass: 'button';
		addProvider: blueStyle priority: PHStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color blue.
	
	context addProvider: orangeButtonStyle priority: PHStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color orange
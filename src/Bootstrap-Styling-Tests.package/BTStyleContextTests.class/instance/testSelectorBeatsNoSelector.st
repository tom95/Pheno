as yet unclassified
testSelectorBeatsNoSelector

	context := BTStyleContext new
		addClass: 'button';
		addProvider: blueStyle priority: BTStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color blue.
	
	context addProvider: orangeButtonStyle priority: BTStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color orange
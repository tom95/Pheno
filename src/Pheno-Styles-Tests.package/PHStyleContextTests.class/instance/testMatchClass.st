as yet unclassified
testMatchClass

	context := PHStyleContext new
		addProvider: blueStyle priority: PHStyleContext priorityApplication;
		addProvider: orangeButtonStyle priority: PHStyleContext priorityUser;
		yourself.
	
	(self expect: (context lookup: #color)) to equal: Color blue.
	
	context addClass: 'button'.
	
	(self expect: (context lookup: #color)) to equal: Color orange
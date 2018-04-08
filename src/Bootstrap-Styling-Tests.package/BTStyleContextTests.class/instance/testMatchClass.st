as yet unclassified
testMatchClass

	context := BTStyleContext new
		addProvider: blueStyle priority: BTStyleContext priorityApplication;
		addProvider: orangeButtonStyle priority: BTStyleContext priorityUser;
		yourself.
	
	(self expect: (context lookup: #color)) to equal: Color blue.
	
	context addClass: 'button'.
	
	(self expect: (context lookup: #color)) to equal: Color orange
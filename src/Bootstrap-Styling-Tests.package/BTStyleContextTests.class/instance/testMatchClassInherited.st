as yet unclassified
testMatchClassInherited

	| parentContext |
	parentContext := BTStyleContext new
		addProvider: blueStyle priority: BTStyleContext priorityUser.

	context := BTStyleContext new
		addProvider: orangeButtonStyle priority: BTStyleContext priorityApplication;
		yourself.
	
	(self expect: (context lookup: #color)) to equal: nil.
	
	context parent: parentContext.
	
	(self expect: (context lookup: #color)) to equal: Color blue
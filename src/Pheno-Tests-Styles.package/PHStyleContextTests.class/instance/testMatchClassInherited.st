tests
testMatchClassInherited

	| parentContext |
	parentContext := PHStyleContext new
		addProvider: blueStyle priority: PHStyleContext priorityUser.

	context := PHStyleContext new
		addProvider: orangeButtonStyle priority: PHStyleContext priorityApplication;
		yourself.
	
	(self expect: (context lookup: #color)) to equal: nil.
	
	context parent: parentContext.
	
	(self expect: (context lookup: #color)) to equal: Color blue
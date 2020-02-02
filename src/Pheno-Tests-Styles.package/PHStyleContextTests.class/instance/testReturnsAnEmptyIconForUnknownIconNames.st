tests
testReturnsAnEmptyIconForUnknownIconNames

	context := PHStyleContext new
		addProvider: (PHStyle forAny icon: #iconThisdoesnotExist123Ab)
		priority: PHStyleContext priorityTheme.
	
	(self expect: [context createIconFormSize: 16]) to not raise: Error
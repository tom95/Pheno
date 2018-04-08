as yet unclassified
testReturnsAnEmptyIconForUnknownIconNames

	context := BTStyleContext new
		addProvider: (BTStyle forAny icon: #iconThisdoesnotExist123Ab)
		priority: BTStyleContext priorityTheme.
	
	(self expect: [context createIconFormSize: 16]) to not raise: Error
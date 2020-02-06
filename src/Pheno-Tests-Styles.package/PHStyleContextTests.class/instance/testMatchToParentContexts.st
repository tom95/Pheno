tests
testMatchToParentContexts

	context := PHStyleContext new
		addClass: 'button';
		parent: (PHStyleContext new
			addProvider: orangeButtonStyle priority: PHStyleContext priorityTheme).
	
	(self expect: (context lookup: #color)) to equal: Color orange
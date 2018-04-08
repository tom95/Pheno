as yet unclassified
testMatchToParentContexts

	context := BTStyleContext new
		addClass: 'button';
		parent: (BTStyleContext new
			addProvider: orangeButtonStyle priority: BTStyleContext priorityTheme).
	
	(self expect: (context lookup: #color)) to equal: Color orange
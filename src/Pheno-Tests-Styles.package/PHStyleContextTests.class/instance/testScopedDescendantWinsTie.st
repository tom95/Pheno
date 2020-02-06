tests
testScopedDescendantWinsTie

	context := PHStyleContext new
		addClass: 'button';
		addProvider: ((PHStyle for: #button) color: Color magenta) priority: PHStyleContext priorityTheme;
		parent: (PHStyleContext new
			addProvider: orangeButtonStyle priority: PHStyleContext priorityTheme;
			addProvider: blueStyle priority: PHStyleContext priorityTheme).
	
	(self expect: (context lookup: #color)) to equal: Color magenta
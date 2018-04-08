as yet unclassified
testScopedDescendantWinsTie

	context := BTStyleContext new
		addClass: 'button';
		addProvider: ((BTStyle for: #button) color: Color magenta) priority: BTStyleContext priorityTheme;
		parent: (BTStyleContext new
			addProvider: orangeButtonStyle priority: BTStyleContext priorityTheme;
			addProvider: blueStyle priority: BTStyleContext priorityTheme).
	
	(self expect: (context lookup: #color)) to equal: Color magenta
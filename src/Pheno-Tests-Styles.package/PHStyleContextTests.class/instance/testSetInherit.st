as yet unclassified
testSetInherit

	| pinkButtonStyle |
	context := PHStyleContext new
		addClass: #button;
		parent: (PHStyleContext new
			addProvider: orangeButtonStyle priority: PHStyleContext priorityTheme;
			addProvider: blueStyle priority: PHStyleContext priorityTheme).
	
	(self expect: (context lookup: #color)) to equal: Color orange.
	
	pinkButtonStyle := (PHStyle for: #button) color: Color magenta.
	context addProvider: pinkButtonStyle priority: PHStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color magenta.
	
	pinkButtonStyle inherit: #color.
	(self expect: (context lookup: #color)) to equal: Color blue.
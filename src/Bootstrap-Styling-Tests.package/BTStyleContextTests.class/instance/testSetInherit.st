as yet unclassified
testSetInherit

	| pinkButtonStyle |
	context := BTStyleContext new
		addClass: #button;
		parent: (BTStyleContext new
			addProvider: orangeButtonStyle priority: BTStyleContext priorityTheme;
			addProvider: blueStyle priority: BTStyleContext priorityTheme).
	
	(self expect: (context lookup: #color)) to equal: Color orange.
	
	pinkButtonStyle := (BTStyle for: #button) color: Color magenta.
	context addProvider: pinkButtonStyle priority: BTStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color magenta.
	
	pinkButtonStyle inherit: #color.
	(self expect: (context lookup: #color)) to equal: Color blue.
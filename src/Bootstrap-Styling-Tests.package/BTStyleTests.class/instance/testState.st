as yet unclassified
testState

	| context |
	context := BTStyleContext new
		addClass: #button;
		addProvider: (BTStyleProvider new
			add: ((BTStyle for: #button) color: Color red);
			add: ((BTStyle for: (BTClassSelector for: #button state: #hover)) color: Color white))
		priority: BTStyleContext priorityTheme.
	
	(self expect: (context color)) to equal: Color red.
	
	context stateHover: true.
	(self expect: (context color)) to equal: Color white.
	
	context stateHover: false.
	(self expect: (context color)) to equal: Color red
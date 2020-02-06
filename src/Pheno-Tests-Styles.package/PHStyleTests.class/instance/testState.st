tests
testState

	| context |
	context := PHStyleContext new
		addClass: #button;
		addProvider: (PHStyleProvider new
			add: ((PHStyle for: #button) color: Color red);
			add: ((PHStyle for: (PHClassSelector for: #button state: #hover)) color: Color white))
		priority: PHStyleContext priorityTheme.
	
	(self expect: (context color)) to equal: Color red.
	
	context stateHover: true.
	(self expect: (context color)) to equal: Color white.
	
	context stateHover: false.
	(self expect: (context color)) to equal: Color red
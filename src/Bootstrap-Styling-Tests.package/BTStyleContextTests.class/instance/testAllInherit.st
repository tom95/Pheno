as yet unclassified
testAllInherit

	context := BTStyleContext new
		parent: (BTStyleContext new
			parent: (BTStyleContext new
				parent: (BTStyleContext new
					addClass: #window;
					parent: (BTStyleContext new
						parent: nil;
						addProvider: (BTStyleProvider new
							add: (BTStyle forAny color: #inherit);
							add: ((BTStyle for: #window) color: Color red)) priority: BTStyleContext priorityTheme)))).
	
	(self expect: context color) to equal: Color red
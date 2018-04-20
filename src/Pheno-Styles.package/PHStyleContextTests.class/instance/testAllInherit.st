as yet unclassified
testAllInherit

	context := PHStyleContext new
		parent: (PHStyleContext new
			parent: (PHStyleContext new
				parent: (PHStyleContext new
					addClass: #window;
					parent: (PHStyleContext new
						parent: nil;
						addProvider: (PHStyleProvider new
							add: (PHStyle forAny color: #inherit);
							add: ((PHStyle for: #window) color: Color red)) priority: PHStyleContext priorityTheme)))).
	
	(self expect: context color) to equal: Color red
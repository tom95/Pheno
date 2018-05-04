as yet unclassified
testInheritViaTheme

	context := PHStyleContext new
		addClass: #label;
		parent: (PHStyleContext new
			addClass: #button;
			parent: (PHStyleContext new
				addProvider: ((PHStyle for: #label) color: #inherit) priority: PHStyleContext priorityTheme;
				addProvider: ((PHStyle for: #button) color: Color white) priority: PHStyleContext priorityTheme)).
	
	(self expect: context color) to equal: Color white
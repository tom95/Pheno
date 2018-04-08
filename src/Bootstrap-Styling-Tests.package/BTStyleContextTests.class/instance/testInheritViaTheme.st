as yet unclassified
testInheritViaTheme

	context := BTStyleContext new
		addClass: #label;
		parent: (BTStyleContext new
			addClass: #button;
			parent: (BTStyleContext new
				addProvider: ((BTStyle for: #label) color: #inherit) priority: BTStyleContext priorityTheme;
				addProvider: ((BTStyle for: #button) color: Color white) priority: BTStyleContext priorityTheme)).
	
	(self expect: context color) to equal: Color white
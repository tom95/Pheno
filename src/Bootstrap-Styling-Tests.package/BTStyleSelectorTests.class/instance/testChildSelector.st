as yet unclassified
testChildSelector

	| selector |
	selector := BTChildSelector
		child: (BTClassSelector for: #button)
		parent: (BTClassSelector for: #sidebar).
	
	(self expect: (selector matches: BTStyleContext new)) to be: false.
	(self expect: (selector matches: (BTStyleContext new addClass: #button; yourself))) to be: false.
	(self expect: (selector matches: (BTStyleContext new addClass: #button; parent: BTStyleContext new; yourself))) to be: false.
	(self expect: (selector matches: (BTStyleContext new addClass: #button; parent: (BTStyleContext new addClass: #sidebar); yourself))) to be: true
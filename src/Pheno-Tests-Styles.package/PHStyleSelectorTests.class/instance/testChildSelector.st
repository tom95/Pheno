tests
testChildSelector

	| selector |
	selector := PHChildSelector
		child: (PHClassSelector for: #button)
		parent: (PHClassSelector for: #sidebar).
	
	(self expect: (selector matches: PHStyleContext new)) to be: false.
	(self expect: (selector matches: (PHStyleContext new addClass: #button; yourself))) to be: false.
	(self expect: (selector matches: (PHStyleContext new addClass: #button; parent: PHStyleContext new; yourself))) to be: false.
	(self expect: (selector matches: (PHStyleContext new addClass: #button; parent: (PHStyleContext new addClass: #sidebar); yourself))) to be: true
as yet unclassified
testClassSelector

	| selector |
	selector := BTClassSelector for: #button.
	
	(self expect: (selector matches: BTStyleContext new)) to be: false.
	(self expect: (selector matches: (BTStyleContext new addClass: #button; yourself))) to be: true
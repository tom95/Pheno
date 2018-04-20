as yet unclassified
testClassSelector

	| selector |
	selector := PHClassSelector for: #button.
	
	(self expect: (selector matches: PHStyleContext new)) to be: false.
	(self expect: (selector matches: (PHStyleContext new addClass: #button; yourself))) to be: true
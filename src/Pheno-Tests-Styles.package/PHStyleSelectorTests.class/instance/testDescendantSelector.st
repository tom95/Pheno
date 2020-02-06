tests
testDescendantSelector

	| selector invalidHierarchy validHierarchy |
	selector := PHDescendantSelector
		child: (PHClassSelector for: #a)
		parent: (PHDescendantSelector 
			child: (PHClassSelector for: #b)
			parent: (PHClassSelector for: #c)).
	
	invalidHierarchy := PHStyleContext new
		addClass: 'a';
		parent: (PHStyleContext new
			addClass: 'c';
			parent: (PHStyleContext new
				addClass: 'x';
				parent: (PHStyleContext new addClass: 'b'))).
	
	validHierarchy := PHStyleContext new
		addClass: 'a';
		parent: (PHStyleContext new
			addClass: 'b';
			parent: (PHStyleContext new
				addClass: 'x';
				parent: (PHStyleContext new addClass: 'c'))).
	
	(self expect: (selector matches: invalidHierarchy)) to be: false.
	(self expect: (selector matches: validHierarchy)) to be: true
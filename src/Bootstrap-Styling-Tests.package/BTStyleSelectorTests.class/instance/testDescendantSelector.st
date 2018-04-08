as yet unclassified
testDescendantSelector

	| selector invalidHierarchy validHierarchy |
	selector := BTDescendantSelector
		child: (BTClassSelector for: #a)
		parent: (BTDescendantSelector 
			child: (BTClassSelector for: #b)
			parent: (BTClassSelector for: #c)).
	
	invalidHierarchy := BTStyleContext new
		addClass: 'a';
		parent: (BTStyleContext new
			addClass: 'c';
			parent: (BTStyleContext new
				addClass: 'x';
				parent: (BTStyleContext new addClass: 'b'))).
	
	validHierarchy := BTStyleContext new
		addClass: 'a';
		parent: (BTStyleContext new
			addClass: 'b';
			parent: (BTStyleContext new
				addClass: 'x';
				parent: (BTStyleContext new addClass: 'c'))).
	
	(self expect: (selector matches: invalidHierarchy)) to be: false.
	(self expect: (selector matches: validHierarchy)) to be: true
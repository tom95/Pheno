as yet unclassified
testSpecifity

	| selector |
	selector := BTDescendantSelector
			child: (BTClassSelector for: #a)
			parent: (BTDescendantSelector
				child: (BTClassSelector for: #b)
				parent: (BTClassSelector for: #c)).
	(self expect: selector specifity) to equal: 3.
	
	selector := BTChildSelector
			child: (BTClassSelector for: #d)
			parent: (BTClassSelector for: #e).
	(self expect: selector specifity) to equal: 2.
	
	selector := BTClassSelector for: #f.
	(self expect: selector specifity) to equal: 1.
	
	selector := BTClassSelector for: #f state: #(active hover).
	(self expect: selector specifity) to equal: 3
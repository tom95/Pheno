as yet unclassified
testSpecifity

	| selector |
	selector := PHDescendantSelector
			child: (PHClassSelector for: #a)
			parent: (PHDescendantSelector
				child: (PHClassSelector for: #b)
				parent: (PHClassSelector for: #c)).
	(self expect: selector specifity) to equal: 3.
	
	selector := PHChildSelector
			child: (PHClassSelector for: #d)
			parent: (PHClassSelector for: #e).
	(self expect: selector specifity) to equal: 2.
	
	selector := PHClassSelector for: #f.
	(self expect: selector specifity) to equal: 1.
	
	selector := PHClassSelector for: #f state: #(active hover).
	(self expect: selector specifity) to equal: 3
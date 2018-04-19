as yet unclassified
testDescendantSelectorBuilder

	| actual expected |
	expected := PHDescendantSelector
		child: (PHClassSelector for: #a)
		parent: (PHDescendantSelector
			child: (PHClassSelector for: #b)
			parent: (PHClassSelector for: #c)).
	
	actual := (PHClassSelector for: #c) > #b > #a.
	
	(self expect: expected class) to equal: actual class
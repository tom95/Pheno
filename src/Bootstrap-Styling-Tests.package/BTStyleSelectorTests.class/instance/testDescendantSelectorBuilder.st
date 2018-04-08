as yet unclassified
testDescendantSelectorBuilder

	| actual expected |
	expected := BTDescendantSelector
		child: (BTClassSelector for: #a)
		parent: (BTDescendantSelector
			child: (BTClassSelector for: #b)
			parent: (BTClassSelector for: #c)).
	
	actual := (BTClassSelector for: #c) > #b > #a.
	
	(self expect: expected class) to equal: actual class
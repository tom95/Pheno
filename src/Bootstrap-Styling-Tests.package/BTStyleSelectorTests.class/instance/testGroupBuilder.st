as yet unclassified
testGroupBuilder

	| actual expected |
	expected := BTGroupSelector new
		add: (BTDescendantSelector
			child: (BTClassSelector for: #a)
			parent: (BTDescendantSelector
				child: (BTClassSelector for: #b)
				parent: (BTClassSelector for: #c)));
		add: (BTChildSelector
			child: (BTClassSelector for: #d)
			parent: (BTClassSelector for: #e));
		add: (BTClassSelector for: #f).
	
	actual := (BTClassSelector for: #c) > #b > #a, #d > #e, #f.
	
	(self expect: expected class) to equal: actual class
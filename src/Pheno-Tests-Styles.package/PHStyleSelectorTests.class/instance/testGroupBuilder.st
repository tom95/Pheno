tests
testGroupBuilder

	| actual expected |
	expected := PHGroupSelector new
		add: (PHDescendantSelector
			child: (PHClassSelector for: #a)
			parent: (PHDescendantSelector
				child: (PHClassSelector for: #b)
				parent: (PHClassSelector for: #c)));
		add: (PHChildSelector
			child: (PHClassSelector for: #d)
			parent: (PHClassSelector for: #e));
		add: (PHClassSelector for: #f).
	
	actual := (PHClassSelector for: #c) > #b > #a, #d > #e, #f.
	
	(self expect: expected class) to equal: actual class
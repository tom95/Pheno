tests
testResizeToPreferred

	| label |
	label := PHLabel text: 'hi'.
	
	label resizeToPreferred.
	(self expect: label width) to beLessThan: PHWidget maximumWidth
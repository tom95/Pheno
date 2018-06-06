as yet unclassified
testResizeToPreferredInContainer

	| label container |
	container := PHWidget new addUserStyles: (PHStyle forAny padding: 10); withLayout.
	container add: (label := PHLabel text: 'hi').
	
	container resizeToPreferred;  fullBounds.
	(self expect: label width) to beLessThan: PHWidget maximumWidth - 10000
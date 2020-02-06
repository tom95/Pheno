tests
testSize

	| button |
	button := PHIconButton new iconName: #iconEdit.
	(self expect: button firstSubmorph extent) to equal: button extent.
	
	button resizeToPreferred; fullBounds.
	(self expect: button firstSubmorph extent) to equal: button extent.
	(self expect: button height) to equal: button styleContext fontSize
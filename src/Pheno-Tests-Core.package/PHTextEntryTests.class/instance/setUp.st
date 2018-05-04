as yet unclassified
setUp
	super setUp.
	
	topLevel := self horizontalTopLevel.
	textEntry := PHTextEntry new align: #(center center).
	topLevel add: textEntry; fullBounds.
	
	self click: textEntry buttons: #(left)
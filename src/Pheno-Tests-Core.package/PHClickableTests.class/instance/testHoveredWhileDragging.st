as yet unclassified
testHoveredWhileDragging
	| clickable |
	clickable := self clickableWidget.
	
	" enter "
	(self expect: clickable) to send: #hovered withArguments: #(true nil).
	
	self
		mouseEnterDragging: clickable;
		checkSpies.
	
	(self expect: clickable hovered) to be: true.
	
	" leave again"
	(self expect: clickable) to send: #hovered withArguments: #(false nil).

	self
		mouseLeaveDragging: clickable;
		checkSpies.

	(self expect: clickable hovered) to be: false
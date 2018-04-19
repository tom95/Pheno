as yet unclassified
testHovered
	| clickable |
	clickable := self clickableWidget.
	
	" enter "
	(self expect: clickable) to send: #hovered withArguments: #(true nil).
	
	self
		mouseEnter: clickable;
		checkSpies.
	
	(self expect: clickable hovered) to be: true.
	
	" leave again"
	(self expect: clickable) to send: #hovered withArguments: #(false nil).

	self
		mouseLeave: clickable;
		checkSpies.

	(self expect: clickable hovered) to be: false
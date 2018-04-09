as yet unclassified
testMouseDownAndUp
	| clickable |
	clickable := self clickableWidget.
	
	(self expect: clickable) to send: #clickedWithEvent.

	self
		mousePress: clickable buttons: #(left);
		mouseRelease: clickable buttons: #(left);
		checkSpies
as yet unclassified
testOnlyMouseDown
	| clickable |
	clickable := self clickableWidget.

	(self expect: clickable) to not send: #clickedWithEvent.
 	
	self
		mousePress: clickable buttons: #(left);
		checkSpies
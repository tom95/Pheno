as yet unclassified
testDisconnectPrimaryClickable
	(self expect: inputs first) to send: #confirmed.
	(self expect: button) to not send: #clickedWithEvent.
	
	" unset the button as primary clickable "
	window primaryFormClickable: nil.
	
	self mouseClick: inputs first buttons: #(left).
	self keyStroke: inputs first key: Character cr.
	
	self checkSpies
as yet unclassified
testActivatesPrimaryClickable
	(self expect: inputs first) to; send: #confirmed.
	(self expect: button) to; send: #clickedWithEvent.
	
	self click: inputs first.
	self keyStroke: inputs first key: Character cr.
	
	self checkSpies
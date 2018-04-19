as yet unclassified
testFocusOnClick
	(self expect: inputs first hasFocus) to; be: false.
	
	self mousePress: inputs first buttons: #(left).

	(self expect: inputs first hasFocus) to; be: true
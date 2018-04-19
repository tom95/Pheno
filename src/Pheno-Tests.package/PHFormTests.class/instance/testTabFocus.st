as yet unclassified
testTabFocus
	self mousePress: inputs first buttons: #(left).
	(self expect: inputs first hasFocus) to; be: true.

	self keyStroke: inputs first key: Character tab.
	(self expect: inputs first hasFocus) to; be: false.
	(self expect: inputs second hasFocus) to; be: true.
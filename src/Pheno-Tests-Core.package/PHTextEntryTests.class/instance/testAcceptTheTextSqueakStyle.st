as yet unclassified
testAcceptTheTextSqueakStyle
	textEntry multiLine: true.
	
	(self expect: textEntry) to send: #confirmed.
	
	self keyStroke: textEntry key: $s modifiers: #(cmd).
	
	self checkSpies
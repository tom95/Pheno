tests
testAddAttributeForSelection
	
	textEntry text: 'test text abc def ghi'.
	textEntry selectFrom: 3 to: 8.
	textEntry addAttributeForSelection: TextEmphasis bold.
	
	(self expect: textEntry text runs) to containExactly:  (RunArray runs: #(3 5 13) values: {#(). {TextEmphasis bold}. #()})
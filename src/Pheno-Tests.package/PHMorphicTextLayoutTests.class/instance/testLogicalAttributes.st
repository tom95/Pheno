as yet unclassified
testLogicalAttributes

	layout text: 'a bc a abcd'.
	
	(self expect: layout logicalAttributes) to containExactly: {
		#(wordStart).
		#(wordEnd).
		#(wordStart).
		#().
		#(wordEnd).
		#(wordStart).
		#(wordEnd).
		#(wordStart).
		#().
		#().
		#()
	}
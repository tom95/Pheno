as yet unclassified
testFallbackToGlobal

	context := PHStyleContext new.
	
	(self expect: (context lookup: #backgroundColor)) to equal: Color yellow
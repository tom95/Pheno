as yet unclassified
testFallbackToGlobal

	context := BTStyleContext new.
	
	(self expect: (context lookup: #backgroundColor)) to equal: Color yellow
tests
testCorrectEmptyHeight
	
	(self expect: textEntry) to not changeIts: #height during: [
		self keyStroke: textEntry key: $a.
		topLevel fullBounds]
as yet unclassified
width: aNumber

	width ~= aNumber ifTrue: [
		width := aNumber.
		self releaseCachedState]
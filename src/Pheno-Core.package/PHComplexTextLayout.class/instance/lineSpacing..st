accessing
lineSpacing: aNumber

	lineSpacing ~= aNumber ifTrue: [
		lineSpacing := aNumber.
		self releaseCachedState]
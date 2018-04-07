as yet unclassified
theme: aTheme

	Theme ifNotNilDo: [:oldTheme | self global removeProvider: oldTheme].
	Theme := aTheme.
	self global addProvider: aTheme priority: BTStyleContext priorityTheme
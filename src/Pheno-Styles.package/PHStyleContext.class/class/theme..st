accessing
theme: aTheme

	Theme ifNotNilDo: [:oldTheme | self global removeProvider: oldTheme].
	Theme := aTheme.
	self global addProvider: aTheme priority: PHStyleContext priorityTheme
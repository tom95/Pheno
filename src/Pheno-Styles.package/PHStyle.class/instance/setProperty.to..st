helper
setProperty: aSymbol to: anObject

	properties at: aSymbol put: anObject.
	self changed: aSymbol
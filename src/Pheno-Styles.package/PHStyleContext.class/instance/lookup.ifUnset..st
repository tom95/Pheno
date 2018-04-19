styles
lookup: aSymbol ifUnset: aBlock

	^ (self lookup: aSymbol) ifNil: aBlock
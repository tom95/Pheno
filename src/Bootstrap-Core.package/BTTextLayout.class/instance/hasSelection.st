testing
hasSelection
	^self cursor notNil and: [self selectionBound ~= self cursor]
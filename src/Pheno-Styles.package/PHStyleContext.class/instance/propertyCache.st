accessing
propertyCache

	^ propertyCache ifNil: [self invalidateCache]
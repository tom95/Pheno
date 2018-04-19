accessing
anyParentSatisfies: aBlock

	(self parent == self or: [self parent isNil]) ifTrue: [^ false].
	
	^ (aBlock value: self parent)
		ifTrue: [true]
		ifFalse: [self parent anyParentSatisfies: aBlock]
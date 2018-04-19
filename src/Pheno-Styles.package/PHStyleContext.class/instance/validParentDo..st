accessing
validParentDo: aBlock

	(self parent notNil and: [self parent ~~ self]) ifTrue: [aBlock value: self parent]
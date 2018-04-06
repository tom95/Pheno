as yet unclassified
minimumExtent

	^ (self paneMorphs size = 1 and: [self paneMorphs first isWidget])
		ifTrue: [	(self firstSubmorph calculateSizeForWidth: self width) minSize + self layoutInset directionsAsPoint + (0 @ self labelHeight)]
		ifFalse: [super minimumExtent]
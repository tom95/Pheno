as yet unclassified
extent: aPoint

	^ super extent: ((self paneMorphs size = 1 and: [self paneMorphs first isWidget])
		ifTrue: [(self paneMorphs first calculateSizeForWidth: aPoint x - self layoutInset directionsAsPoint x) minSize + (0 @ self labelHeight) max: aPoint]
		ifFalse: [aPoint])
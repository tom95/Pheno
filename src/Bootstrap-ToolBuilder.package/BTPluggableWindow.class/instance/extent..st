as yet unclassified
extent: aPoint

	| frameExtraSize |
	frameExtraSize := self layoutInset directionsAsPoint + (0 @ self labelHeight).
	
	^ super extent: ((self paneMorphs size = 1 and: [self paneMorphs first isWidget])
		ifTrue: [(self paneMorphs first calculateSizeForWidth: aPoint x - frameExtraSize x) minSize + frameExtraSize max: aPoint]
		ifFalse: [aPoint])
extent-fix
extent: aPoint
	"Just this method with a super extent: instead of a systemWindowExtent: is just what we want. However,
	 SystemWindow's extent: expects layoutInset to be a Scalar or Point, which is wrong (in our case it's always
	 a Rectangle). We can't just override it, because calling super extent: will still bubble up to the original SystemWindow.
	 So we also have to override morph extent: :( "

	| frameExtraSize |
	frameExtraSize := self layoutInset directionsAsPoint + (0 @ self labelHeight).
	
	^ self systemWindowExtent: ((self paneMorphs size = 1 and: [self paneMorphs first isWidget])
		ifTrue: [(self paneMorphs first calculateSizeForWidth: aPoint x - frameExtraSize x) minSize + frameExtraSize max: aPoint]
		ifFalse: [aPoint])
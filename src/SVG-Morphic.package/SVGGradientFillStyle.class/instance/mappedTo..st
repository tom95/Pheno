accessing
mappedTo: anSVGComponentMorph
	"Answer a copy of the receiver with the appropriate origin and direction."

	self mapsToObjectBounds
		ifTrue: [^self mappedToBounds: anSVGComponentMorph globalBoundingBox].
	^self
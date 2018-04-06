layout
formAtExtent: aPoint
	^(cachedForm notNil and: [cachedForm extent = aPoint])
		ifTrue: [cachedForm]
		ifFalse: [
			cachedForm := fillMode = #center
				ifTrue: [form scaledIntoFormOfSize: aPoint]
				ifFalse: [ | ratio |
					ratio := aPoint / form extent.
					form magnify: form boundingBox by: (ratio x max: ratio y) smoothing: 2]]
layout
formAtExtent: aPoint

	^ (cachedForm notNil and: [cachedForm extent = aPoint floor])
		ifTrue: [cachedForm]
		ifFalse: [
			cachedForm := fillMode = #center
				ifTrue: [form scaledIntoFormOfSize: aPoint floor]
				ifFalse: [ | ratio |
					ratio := aPoint / form extent.
					form magnify: form boundingBox by: (ratio x max: ratio y) smoothing: 2]]
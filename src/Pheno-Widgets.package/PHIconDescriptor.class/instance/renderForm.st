colors
renderForm

	| rect form |
	rect := 0 @ 0 extent: self size asPoint * PHIcon supersamplingFactor.
	self svg bounds: rect.
	self svg allMorphsDo: [:morph | morph style at: 'fill' put: self color].
	
	form := self svg imageFormForRectangle: rect.
	^ PHIcon supersamplingFactor > 1
		ifTrue: [form scaledToSize: self size asPoint smoothing: 16]
		ifFalse: [form]
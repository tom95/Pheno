running
performTest

	| w h |
	" bind current world and hand, if supported "
	w := Smalltalk at: #ActiveWorldVariable ifAbsent: [nil].
	h := Smalltalk at: #ActiveHandVariable ifAbsent: nil.
	(w notNil and: [h notNil])
		ifTrue: [w value: world during: [h value: hand during: [super performTest]]]
		ifFalse: [super performTest]
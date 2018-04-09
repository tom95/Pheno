as yet unclassified
doesNotUnderstand: aMessage
	fulfilled := negated ifTrue: [false] ifFalse: [true].
	
	self arguments
		ifNotNilDo: [ :expected |
		 actual := aMessage arguments first: expected size ]
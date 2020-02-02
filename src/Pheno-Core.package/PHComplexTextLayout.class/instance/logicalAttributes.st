accessing
logicalAttributes

	| previous |
	self flag: #fixme. "need to implement more? see PHPangoTextLayout>>logicalAttributes for a full list"
	previous := Character cr.
	
	^ Array streamContents: [:out | | in |
		in := self text readStream.
		[in atEnd] whileFalse: [ | next current |
			current := in next.
			next := in peek ifNil: [Character cr].
			
			self putLogicalAttributesFor: current next: next previous: previous in: out.
			previous := current]]
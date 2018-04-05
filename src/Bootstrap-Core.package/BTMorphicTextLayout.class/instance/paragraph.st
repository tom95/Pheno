accessing
paragraph
	^paragraph ifNil: [
		paragraph := NewParagraph new
			compose: self text asText
			style: TextStyle default copy
			from: 1
			in: (origin extent: (self width < 0
				ifTrue: [self maximumContainerExtent x]
				ifFalse: [self width]) @ self maximumContainerExtent y);
			adjustRightX.
		self updateCursor.
		paragraph ]
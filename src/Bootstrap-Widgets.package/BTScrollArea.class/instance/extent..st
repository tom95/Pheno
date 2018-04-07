geometry
extent: aPoint

	super extent: aPoint.
	container extent: aPoint.
	
	container hasSubmorphs ifTrue: [ | preferred |
		preferred := container firstSubmorph preferredSizeForWidth: aPoint x.
		  
		container firstSubmorph extent:
			(policy first == #show ifTrue: [aPoint x] ifFalse: [preferred naturalSize x]) @
			(policy second == #show ifTrue: [aPoint y] ifFalse: [preferred naturalSize y]) ].
	
	self scrollOffset: self scrollOffset
test-helper
findWidgetOfKind: aClass labelled: aString
	" returns the first child (non-direct children included) that is of aClass and answers aString on receiving #text or has a child PHLabel saying aString "
	
	self allMorphsDo: [:morph |
		(morph isKindOf: aClass) ifTrue: [
			(((morph respondsTo: #text)
				ifTrue: [morph text]
				ifFalse: [(self findWidgetOfKind: PHLabel) ifNotNilDo: #text ifNil: ['']]) includesSubstring: aString) ifTrue: [^ morph]]].
	
	(NotFound object: aClass) signal
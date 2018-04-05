test-helper
findWidgetOfKind: aClass labelled: aString
	" returns the first child (non-direct children included) that is of aClass and answers aString on receiving #text or has a child BTLabel saying aString "
	
	self allMorphsDo: [:morph |
		(morph isKindOf: aClass) ifTrue: [
			(((morph respondsTo: #text)
				ifTrue: [morph text]
				ifFalse: [(self findSubmorph: morph ofKind: BTLabel) ifNotNilDo: #text ifNil: ['']]) includesSubstring: aString) ifTrue: [^ morph]]].
	
	(NotFound object: aClass) signal
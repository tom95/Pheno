ui-matching
haveA: aClass labelled: aString
	" check if our subject contains a widget of aClass which either reponds aString with its #text message or
	  contains a BTLabel that has aString as its text "
	
	self subject allMorphsDo: [:morph |
		(morph isKindOf: aClass) ifTrue: [
			(((morph respondsTo: #text)
				ifTrue: [morph text]
				ifFalse: [(self findSubmorph: morph ofKind: BTLabel) ifNotNilDo: #text ifNil: ['']]) includesSubstring: aString) ifTrue: [
			" tell the system that we found one, in case we're negated "
			self assert: true operator: 'have a ', aClass name, ' with the label' expected: aString.
			^ morph]]].
	
	self assert: false operator: 'have a ', aClass name, ' with the label' expected: aString
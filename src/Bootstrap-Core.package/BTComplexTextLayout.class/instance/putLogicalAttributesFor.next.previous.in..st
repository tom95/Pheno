as yet unclassified
putLogicalAttributesFor: current next: next previous: previous in: aStream
	
	(previous isSeparator and: [current isSeparator not]) ifTrue: [^ aStream nextPut: #(wordStart)].
	(previous isSeparator not and: [current isSeparator]) ifTrue: [^ aStream nextPut: #(wordEnd)].
	^ aStream nextPut: #()
private
applyPresentationStyles: aString model: aModel

	| oldStyles |
	oldStyles := presentationStyles.
	
	(Compiler evaluate: aString for: nil notifying: aModel)
		ifNil: [^ self]
		ifNotNil: [:s | presentationStyles := s].
	
	slides removeStyleProvider: oldStyles.
	slides  addUserStyles: presentationStyles.
	
	slides allMorphsDo: [:m | (m isKindOf: PHLabel) ifTrue: [m updateText]].
	slides changed
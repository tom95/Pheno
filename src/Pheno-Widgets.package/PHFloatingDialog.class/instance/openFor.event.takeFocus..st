displaying
openFor: aTargetWidget event: anEvent takeFocus: aBoolean

	self
		position: (self openPositionFor: aTargetWidget);
		openInWorld.
	
	(aBoolean and: [anEvent notNil]) ifTrue: [ | inputSubmorphs |
		inputSubmorphs := submorphs select: [:submorph | submorph isFormInput].
		inputSubmorphs
			ifNotEmpty: [anEvent hand newKeyboardFocus: inputSubmorphs first]
			ifEmpty: [anEvent hand newKeyboardFocus: self].

		anEvent hand newMouseFocus: self]
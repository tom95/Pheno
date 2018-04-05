displaying
openFor: aTargetWidget event: anEvent

	self
		position: (self openPositionFor: aTargetWidget);
		openInWorld.

	anEvent ifNotNilDo: [:event | | inputSubmorphs |
		inputSubmorphs := submorphs select: [:submorph | submorph isFormInput].
		inputSubmorphs
			ifNotEmpty: [event hand newKeyboardFocus: inputSubmorphs first]
			ifEmpty: [event hand newKeyboardFocus: self].

		event hand newMouseFocus: self]
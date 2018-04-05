classes
removeClass: aString

	self classes remove: aString ifAbsent: [].
	self changed
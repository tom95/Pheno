accessing
add: aStyle

	styles add: aStyle.
	aStyle addDependent: self.
	self changed
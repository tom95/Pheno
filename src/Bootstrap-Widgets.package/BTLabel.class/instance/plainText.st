text
plainText

	self text ifEmpty: [^ self text].

	^ BTMarkupParser strip: self text
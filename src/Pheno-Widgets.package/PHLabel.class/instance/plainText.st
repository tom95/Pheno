text
plainText

	self text ifEmpty: [^ self text].

	^ PHMarkupParser strip: self text
text
internalText: aString

	self text
		ifEmpty: [super internalText: aString]
		ifNotEmpty: [super internalText: (String new: self text size withAll: $*)]
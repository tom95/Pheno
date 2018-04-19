converting
markupToText: aString

	| in out |
	out := '' asText.
	in := aString readStream.
	
	[in atEnd] whileFalse: [
		out append: (in upTo: $<).
		in atEnd ifFalse: [self nextTagFrom: in to: out]].
	
	^ out contents
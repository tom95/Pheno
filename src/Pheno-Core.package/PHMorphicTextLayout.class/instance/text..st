accessing
text: aString

	" NewParagraph reports a smaller height for empty layouts. This causes a jump in height whenever typing the first character. We workaround this by always having a single space "
	text := aString isText ifTrue: [aString] ifFalse: [PHMarkupParser markupToText: aString].
	text ifEmpty: [text := ' ' asText].
	paragraph := nil
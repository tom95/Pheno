accessing
text: aString

	" NewParagraph reports a smaller height for empty layouts. This causes a jump in height whenever typing the first character. We workaround this by always having a single space "
	text := aString copy.
	text ifEmpty: [text := ' ' asText].
	
	self alignment ~= #left ifTrue: [
		text addAttribute: (self alignmentAttributeFor: self alignment)].
	
	paragraph := nil
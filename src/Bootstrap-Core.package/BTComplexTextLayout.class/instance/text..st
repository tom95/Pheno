as yet unclassified
text: aString

	| newText |
	newText := BTMarkupParser markupToText: aString.
	
	newText ~= text ifTrue: [
		text := newText.
		self releaseCachedState]
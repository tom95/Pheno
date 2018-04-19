as yet unclassified
text: aString

	| newText |
	newText := PHMarkupParser markupToText: aString.
	
	newText ~= text ifTrue: [
		text := newText.
		self releaseCachedState]
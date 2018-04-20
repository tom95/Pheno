private
nextTagFrom: aStream to: aText
	" start on the first character of the tag name (skipping the opening <) "
	
	| attributes contentsBefore startIndex |
	attributes := self parseTagAttributesFrom: aStream.
	startIndex := aText string size + 1.
	
	[
		contentsBefore := aStream upTo: $<.
		aText append: contentsBefore.
		(aStream peek ~= $/ and: [aStream atEnd not]) ifTrue: [self nextTagFrom: aStream to: aText].
	] doWhileTrue: [aStream peek ~= $/ and: [aStream atEnd not]].
	
	attributes do: [:attr | aText addAttribute: attr from: startIndex to: aText string size].
	
	aStream upTo: $>
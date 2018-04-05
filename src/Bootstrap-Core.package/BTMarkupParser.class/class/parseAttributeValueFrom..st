private
parseAttributeValueFrom: aStream
	" start on = "
	
	| char endChar out |
	endChar := aStream next.
	out := '' writeStream.
	
	[(char := aStream next) ~= endChar] whileTrue: [
		(char = $\ and: [aStream peek = endChar]) ifTrue: [
			out nextPut: aStream next].
		out nextPut: char].

	^ out contents
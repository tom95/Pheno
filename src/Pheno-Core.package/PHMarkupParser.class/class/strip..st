converting
strip: aString

	| in out |
	out := '' writeStream.
	in := aString readStream.

	[in atEnd] whileFalse: [
		in peek = $<
			ifTrue: [in unCommand]
			ifFalse: [
				in peek = $&
					ifTrue: [out nextPut: (self unescapeNextHtmlEntityFrom: in)]
					ifFalse: [out nextPut: in next]]].

	^ out contents
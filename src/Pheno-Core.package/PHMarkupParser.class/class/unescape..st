converting
unescape: aString

	| in out |
	out := '' writeStream.
	in := aString readStream.

	[in atEnd] whileFalse: [
		in peek = $&
			ifTrue: [out nextPut: (self unescapeNextHtmlEntityFrom: in)]
			ifFalse: [out nextPut: in next]].

	^ out contents
accessing
text: aString

	| utf8 |
	utf8 := aString string squeakToUtf8.
	
	text := utf8.
	self primLayout: self layout text: utf8
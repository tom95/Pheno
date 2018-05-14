accessing
text: aString

	label ifNil: [
		label := PHLabel new
			wrap: #never;
			yourself.
		self add: label at: 1].
	
	label text: aString
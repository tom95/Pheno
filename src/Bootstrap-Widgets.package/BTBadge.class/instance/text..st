accessing
text: aString

	label ifNil: [
		label := BTLabel new
			wrap: #never;
			yourself.
		self add: label].
		self class applyStyleAttributes: label.
	
	label text: aString
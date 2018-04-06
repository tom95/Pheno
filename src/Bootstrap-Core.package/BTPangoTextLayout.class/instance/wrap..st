accessing
wrap: aMode
	" one of #word, #char, #word_char "
	
	wrap := aMode.
	self
		primLayout: self layout
		wrap: (#(word char word_char)
			indexOf: aMode
			ifAbsent: [ self error: 'invalid mode' ]) - 1
accessing
wrap: aMode
	" one of #never, #char, #word_char, #word. default to #word "
	aMode == #never
		ifTrue: [ wrap := false ]
		ifFalse: [
			wrap := true.
			self layout wrap: aMode ].
	
	self layoutChanged; changed
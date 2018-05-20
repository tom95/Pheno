text
textKeepCursor: aStringOrText
	" labels dont have a concept of cursors, however certain operations defined on label may want to act differently in an entry that has a cursor, so this method is provided for being overriden "

	self text: aStringOrText
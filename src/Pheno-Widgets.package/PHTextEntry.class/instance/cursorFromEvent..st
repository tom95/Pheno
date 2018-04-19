cursor
cursorFromEvent: anEvent

	| data index position trailing |	
	" catch case where we would jump at cursor pos of the placeholder "
	self text ifEmpty: [^ 0].
	
	position := anEvent position - self layoutBounds origin.
	data := self layout indexForPosition: position.
	
	index := data second.
	trailing := data third.

	^ index + trailing
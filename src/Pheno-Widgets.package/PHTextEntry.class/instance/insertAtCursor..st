editing
insertAtCursor: aString

	| selection insert |
	insert := aString.
	selection := self selectionBounds.
	
	text isText ifTrue: [
		insert := insert asText.
		text attributesAt: selection first do: [:attr | insert addAttribute: attr]].
	
	text := (text first: selection first), insert, (text allButFirst: selection second).
	self placeCursorAt: selection first.
	self updateText: text
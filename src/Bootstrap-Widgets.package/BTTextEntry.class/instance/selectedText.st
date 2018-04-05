selection
selectedText

	| selection |
	selection := self selectionBounds.
	
	^ self text copyFrom: selection first + 1 to: selection second
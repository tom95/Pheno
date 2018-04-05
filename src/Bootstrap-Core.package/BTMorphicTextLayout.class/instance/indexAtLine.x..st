cursor
indexAtLine: aNumber x: anotherNumber
	| line p |
	p := self paragraph.
	line := p lines at: aNumber.
	^((CharacterBlockScanner new text: p text textStyle: p textStyle)
		characterBlockAtPoint: aNumber @ 0 index: nil
		in: line) stringIndex
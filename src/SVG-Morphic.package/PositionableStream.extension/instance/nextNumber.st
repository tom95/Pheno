*SVG-Morphic
nextNumber
	"Answer a number from the stream."

	|element|
	[(element := self next) isNil or: [element isDigit or: [element = $-]]] whileFalse.
	element ifNil: [^nil].
	self skip: -1.
	^Number readFrom: self
as yet unclassified
stateSymbolToIndex: aSymbol

	" dont forget to enter new values in #initialize as well "
	^ aSymbol caseOf: {
		[#hover] -> [STATE_HOVER].
		[#active] -> [STATE_ACTIVE].
		[#disabled] -> [STATE_DISABLED].
		[#selected] -> [STATE_SELECTED].
		[#backdrop] -> [STATE_BACKDROP].
		[#firstChild] -> [STATE_FIRST_CHILD].
		[#lastChild] -> [STATE_LAST_CHILD].
		[#oddChild] -> [STATE_ODD_CHILD].
		[#evenChild] -> [STATE_EVEN_CHILD]
	} otherwise: [STATE_NORMAL]
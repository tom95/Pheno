as yet unclassified
initialize

	" dont forget to enter new values to #stateSymbolToIndex: as well "
	STATE_NORMAL := 0.
	STATE_ACTIVE := 1.
	STATE_HOVER := 2.
	STATE_DISABLED := 3.
	STATE_SELECTED := 4.
	STATE_BACKDROP := 5.
	
	STATE_FIRST_CHILD := 6.
	STATE_LAST_CHILD := 7.
	STATE_EVEN_CHILD := 8.
	STATE_ODD_CHILD := 9.
	
	" increment this when you add new states "
	MAX_STATES := 64.
	
	Theme ifNil: [PHBootstrapTheme new use].
	Utilities ifNil: [self updateUtilityStyles]
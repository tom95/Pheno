event handling
keyboardFocusChange: weHaveFocus

	super keyboardFocusChange: weHaveFocus.
	
	weHaveFocus ifFalse: [self delete]
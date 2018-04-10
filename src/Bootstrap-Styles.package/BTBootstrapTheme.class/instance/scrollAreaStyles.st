styles
scrollAreaStyles

	(self for: #scrollBar)
		" padding sets the used width/height. left is for vertical, top for horizontal bars "
		padding: 10 @ 10;
		borderRadius: 5;
		backgroundColor: ((Color fromString: '333333') alpha: 0.7)
initialize-release
initialize
	super initialize.

	width := -1.
	cursor := 0.
	selectionBound := 0.
	text := ' '. "see comment in text:"
	origin := 0 asPoint
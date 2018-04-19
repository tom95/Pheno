initialize-release
initialize
	super initialize.

	width := -1.
	cursor := nil.
	selectionBound := 0.
	text := ' '. "see comment in text:"
	origin := 0 asPoint
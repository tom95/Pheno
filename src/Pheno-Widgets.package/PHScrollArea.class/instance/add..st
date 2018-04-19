hierarchy
add: aWidget
	" prefer #content: to this, since it makes it clearer that only only child is accepted "

	container removeAllMorphs.
	container addMorph: aWidget
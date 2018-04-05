accessing
height: aNumber
	" set the maximum height in px for the layout.
	  in pango, putting in negative numbers sets the maximum number of lines before
	  ellipsizing, e.g. -2 would correspond to a maximum of two lines "
	height := aNumber.
	^self primLayout: self layout height: aNumber
accessing
width: aNumber
	" set the maximum width in px for the layout or -1 to unlimit "
	
	width := aNumber.
	self primLayout: self layout width: aNumber ceiling asInteger
accessing
scalingMode: aMode
	" one of
		#fixed (take exactly minSize)
		#shrink (anything between minSize and our own size)
		#fill (anything upward of our minSize)
		#full (exactly our own size) "
	
	scalingMode := aMode.
	self layoutChanged
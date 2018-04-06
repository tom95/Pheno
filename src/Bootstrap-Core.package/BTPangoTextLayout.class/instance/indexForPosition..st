cursor
indexForPosition: aPoint
	" returns a cursor index for a click at the given point. point is relative
	  to the top left corner of the layout "
	
	^ self primLayout: layout indexForPosition: aPoint
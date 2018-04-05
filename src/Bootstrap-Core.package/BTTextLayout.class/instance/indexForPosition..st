cursor
indexForPosition: aPoint
	" returns a tuple of {success. cursor index. trailing index} for a click at
	 the given point. point is relative to the top left corner of the layout "
	^self subclassResponsibility
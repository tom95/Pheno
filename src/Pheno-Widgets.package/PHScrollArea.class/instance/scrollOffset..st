accessing
scrollOffset: aPoint

	container offset: (self clampScrollOffset: aPoint).
	
	self updateScrollBars
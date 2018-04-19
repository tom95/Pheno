displaying
openCentered

	self parentTopLevel: nil.
	acceptPromise := PHPromise new.

	self
		fullBounds;
		center: self currentWorld center;
		openInWorld;
		shown.
	
	^ acceptPromise
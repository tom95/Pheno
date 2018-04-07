displaying
openCentered

	self parentTopLevel: nil.
	acceptPromise := BTPromise new.

	self
		fullBounds;
		center: self currentWorld center;
		openInWorld;
		shown.
	
	^ acceptPromise
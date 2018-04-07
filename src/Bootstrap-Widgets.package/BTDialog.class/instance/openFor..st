displaying
openFor: aWidget

	self parentTopLevel: aWidget topLevel.
	acceptPromise := BTPromise new.

	self
		fullBounds;
		center: self parentTopLevel center;
		openInWorld;
		shown.
	
	^ acceptPromise
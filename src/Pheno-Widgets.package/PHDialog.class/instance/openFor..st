displaying
openFor: aWidget

	self parentTopLevel: aWidget topLevel.
	acceptPromise := PHPromise new.

	self
		fullBounds;
		center: self parentTopLevel center;
		openInWorld;
		shown.
	
	^ acceptPromise
lifecycle
enteringWith: anObject
	" you may use this callback to load/set-up data. it is fired when the view is presented to the user "
	
	^ BTPromise unit: nil
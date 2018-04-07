displaying
accept: anObject
	" fulfill the promise that the opener of this dialog can have subscribed to "
	
	self delete.
	acceptPromise resolveWith: anObject
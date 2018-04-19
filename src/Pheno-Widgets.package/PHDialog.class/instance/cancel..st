displaying
cancel: anObject
	" reject the promise that the opener of this dialog can have subscribed to "
	
	self delete.
	acceptPromise rejectWith: anObject
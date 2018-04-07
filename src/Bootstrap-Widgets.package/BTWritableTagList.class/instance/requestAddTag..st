initialize-release
requestAddTag: aString

	aString ifNotEmpty: [
		input clear.
		
		self
			addTag: aString;
			triggerTagAdded: aString].
	
	^ nil
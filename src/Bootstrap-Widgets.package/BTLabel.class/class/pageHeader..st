instance creation
pageHeader: aString

	^ self new
		text: aString;
		pageHeader;
		yourself
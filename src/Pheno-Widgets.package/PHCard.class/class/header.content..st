instance creation
header: aString content:  aWidget

	| header |
	header := PHCardHeader new add: (PHLabel text: aString).
	
	^ self new
		add: header;
		add: aWidget
instance creation
header: aString content:  aWidget

	| header |
	header := BTCardHeader new add: (BTLabel text: aString).
	
	^ self new
		add: header;
		add: aWidget
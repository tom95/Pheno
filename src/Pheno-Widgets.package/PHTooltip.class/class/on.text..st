instance creation
on: aWidget text: aString

	^ self new
		add: ((PHLabel small: aString) wrap: #never);
		hoverAttachTo: aWidget;
		yourself
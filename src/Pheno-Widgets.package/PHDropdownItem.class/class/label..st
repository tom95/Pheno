instance creation
label: aString

	| label |
	label := (PHLabel text: aString)
		wrap: #never.
	
	^ self new
		label: label;
		add: label
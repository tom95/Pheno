instance creation
label: aString

	| label |
	label := (BTLabel text: aString)
		wrap: #never.
	
	^ self new
		label: label;
		add: label
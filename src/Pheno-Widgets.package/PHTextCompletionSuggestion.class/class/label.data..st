instance creation
label: aString data: anObject

	| label |
	label := (PHLabel text: aString)
		wrap: #never.

	^ self new
		label: label;
		data: anObject;
		add: label
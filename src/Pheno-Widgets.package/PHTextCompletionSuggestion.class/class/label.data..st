as yet unclassified
label: aString data: anObject

	| label |
	label := (PHLabel text: aString)
		wrap: #never.

	^ PHTextCompletionSuggestion new
		label: label;
		data: anObject;
		add: label
as yet unclassified
label: aString data: anObject

	| label |
	label := (BTLabel text: aString)
		wrap: #never.

	^ BTTextCompletionSuggestion new
		label: label;
		data: anObject;
		add: label
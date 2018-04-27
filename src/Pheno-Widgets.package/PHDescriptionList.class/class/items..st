instance creation
items: aCollection
	"e.g. {{'label1'. PHTextArea new}. {'label2'. PHTextArea new}}"

	| result |
	result := self new.
	aCollection do: [:each | result addItem: each].
	^ result
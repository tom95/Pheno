instance creation
tabs: aCollection

	| result |
	result := self new.
	aCollection do: [:text | result addTab: text].
	^ result
	
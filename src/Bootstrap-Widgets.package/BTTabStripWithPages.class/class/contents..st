instance creation
contents: aCollection

	| result |
	result := self new.
	aCollection do: [:each | result addTab: each first content: each second].
	^ result
instance creation
widgets: aCollection

	| result |
	result := self new.
	aCollection do: [:widget | result add: widget].
	^ result
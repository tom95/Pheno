accessing
wrap

	wrap == false ifTrue: [^ #never].
	^ self layout wrap
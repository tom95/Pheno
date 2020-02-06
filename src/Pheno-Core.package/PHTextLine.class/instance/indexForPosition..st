computing
indexForPosition: aNumber

	| x text |
	x := self left.
	text := self layout text.
	text runs withStartStopAndValueFrom: self start to: self stop do: [:runStart :runStop :attributes | | font |
		font := self layout fontFromAttributes: attributes.
		
		self flag: #todo. "if over half, take next char"
		runStart to: runStop do: [:index |
			x := x + (font widthOf: (text string at: index)).
			x > aNumber ifTrue: [^ index - 1]]].
	
	^ self stop
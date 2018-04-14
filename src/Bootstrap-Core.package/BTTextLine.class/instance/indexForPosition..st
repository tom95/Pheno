as yet unclassified
indexForPosition: aNumber

	| x |
	x := self left.
	self text runs withStartStopAndValueFrom: self start to: self stop do: [:runStart :runStop :attributes | | font |
		font := TextStyle default defaultFont.
		attributes do: [:att | att forFontInStyle: TextStyle default do: [:f | font := f]].
		
		self flag: #todo. "if over half, take next char"
		runStart to: runStop do: [:index |
			x := x + (font widthOf: (text string at: index)).
			x > aNumber ifTrue: [^ index - 1]]].
	
	^ self stop - 1
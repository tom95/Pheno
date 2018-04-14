as yet unclassified
rectangleForIndex: aNumber

	| x |
	self assert: (aNumber >= self start and: [aNumber <= self stop]).
	
	x := self left.
	self text runs withStartStopAndValueFrom: self start to: self stop do: [:runStart :runStop :attributes | | font |
		font := TextStyle default defaultFont.
		attributes do: [:att | att forFontInStyle: TextStyle default do: [:f | font := f]].
		
		x := x + (font widthOfString: self text string from: runStart to: (runStop min: aNumber)).
		aNumber <= runStop ifTrue: [^ x @ self top extent: 1 @ self height]]
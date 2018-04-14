as yet unclassified
rectangleForIndex: aNumber

	| x |
	aNumber <= self start ifTrue: [^ self left @ self top extent: 0 @ self height].
	aNumber >= self stop ifTrue: [^ self right @ self top extent: 0 @ self height].
	
	x := self left.
	self text runs withStartStopAndValueFrom: self start to: self stop do: [:runStart :runStop :attributes | | font |
		font := TextStyle default defaultFont.
		attributes do: [:att | att forFontInStyle: TextStyle default do: [:f | font := f]].
		
		x := x + (font widthOfString: self text string from: runStart to: (runStop min: aNumber - 1)).
		aNumber <= runStop ifTrue: [^ x @ self top extent: 0 @ self height]]
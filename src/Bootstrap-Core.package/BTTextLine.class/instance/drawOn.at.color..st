as yet unclassified
drawOn: aCanvas at: aPoint color: aColor

	| x |
	x := 0.
	self text runs withStartStopAndValueFrom: self start to: self stop do: [:runStart :runStop :attributes | | font position |
		font := TextStyle default defaultFont.
		attributes do: [:att | att forFontInStyle: TextStyle default do: [:f | font := f]].
		
		position := aPoint + (x @ (self baseline - font ascent)).
		aCanvas drawString: self text string from: runStart to: runStop at: position font: font color: aColor.
		
		"aCanvas privatePort combinationRule: Form blend.
		font installOn: aCanvas privatePort foregroundColor: aColor backgroundColor: nil.
		font displayString: self text string on: aCanvas privatePort from: runStart to: runStop at: aPoint + (x @ (self baseline - font ascent)) kern: 0 baselineY: self baseline."
		
		self flag: #performance. "font displayString... may return the advance width already"
		x := x + (font widthOfString: self text string from: runStart to: runStop)]
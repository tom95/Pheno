as yet unclassified
runsDo: aBlock tokensDo: anotherBlock

	| lineAscent emitLineBlock activeFont |
	lineAscent := 0.
	activeFont := self font.

	emitLineBlock := [:lineStartIndex :lineStopIndex :rect |
		lines add: ((BTTextLine origin: rect origin corner: rect corner)
			baseline: lineAscent;
			start: lineStartIndex;
			stop: lineStopIndex;
			layout: self).
		lineAscent := activeFont ascent].
	
	self text runs withStartStopAndValueDo: [:start :stop :attributes |
		activeFont := self fontFromAttributes: attributes.
		lineAscent := lineAscent max: activeFont ascent.
		aBlock value: start value: stop value: activeFont.
		
		self tokensOfString: self text string from: start to: stop do: [:tokenStart :tokenStop |
			anotherBlock value: activeFont value: tokenStart value: tokenStop value: emitLineBlock]].
	
	lines ifEmpty: [emitLineBlock value: 0 value: 0 value: (0 @ 0 extent: 0 @ activeFont height)]
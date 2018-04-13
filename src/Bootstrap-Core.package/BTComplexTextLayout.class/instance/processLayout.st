as yet unclassified
processLayout

	| totalWidth lineWidth totalHeight lineHeight lineStartIndex lineAscent |
	lineWidth := 0.
	lineHeight := 0.
	lineAscent := 0.
	totalWidth := 0.
	totalHeight := 0.
	lineStartIndex := 1.
	lines := OrderedCollection new.
	
	self text runs withStartStopAndValueDo: [:start :stop :attributes | | activeFont |
		activeFont := self text fontAt: start withStyle: TextStyle default.
		lineHeight := lineHeight max: activeFont lineGrid.
		lineAscent := lineAscent max: activeFont ascent.
		
		self tokensOfString: self text string from: start to: stop do: [:tokenStart :tokenStop | | tokenWidth |
			tokenWidth := activeFont widthOfString: self text string from: tokenStart to: tokenStop.
			
			lineWidth + tokenWidth > self width
				ifTrue: [
					lines add: ((BTTextLine origin: 0 @ totalHeight extent: lineWidth @ lineHeight)
						baseline: lineAscent;
						start: lineStartIndex;
						stop: tokenStart - 1;
						text: self text).
					
					lineStartIndex := tokenStart.
					totalWidth := totalWidth max: lineWidth.
					totalHeight := totalHeight + lineHeight + self lineSpacing.
					lineWidth := tokenWidth.
					lineHeight := activeFont lineGrid.
					lineAscent := activeFont ascent]
				ifFalse: [lineWidth := lineWidth + tokenWidth]]].
	
	lines add: ((BTTextLine origin: 0 @ totalHeight extent: lineWidth @ lineHeight)
		baseline: lineAscent;
		start: lineStartIndex;
		stop: self text size;
		text: self text).
	
	totalWidth := totalWidth max: lineWidth.
	totalHeight := totalHeight + lineHeight.
	
	self flag: #fixme. "not sure yet about this (is easier for testing, but less accurate for possible future use cases). once decided, move up into constructors or remove"
	lines := lines collect: [:line | line withWidth: self width].
	
	extent := totalWidth @ totalHeight
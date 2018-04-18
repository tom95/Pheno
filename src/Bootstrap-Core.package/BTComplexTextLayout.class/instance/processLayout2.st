as yet unclassified
processLayout2

	| totalWidth lineWidth totalHeight lineHeight lineStartIndex lineAscent range |
	lineWidth := 0.
	lineHeight := 0.
	lineAscent := 0.
	totalWidth := 0.
	totalHeight := 0.
	lineStartIndex := 1.
	lines := OrderedCollection new.
	
	self text runs withStartStopAndValueDo: [:start :stop :attributes | | activeFont |
		activeFont := self fontFromAttributes: attributes.
		
		activeFont lineGrid > lineHeight ifTrue: [range := self rangeForLineAtYFrom: totalHeight to: totalHeight + activeFont lineGrid].
		
		lineHeight := lineHeight max: activeFont lineGrid.
		lineAscent := lineAscent max: activeFont ascent.
		
		self tokensOfString: self text string from: start to: stop do: [:tokenStart :tokenStop | | tokenWidth |
			tokenWidth := activeFont widthOfString: self text string from: tokenStart to: tokenStop.
			
			range first + lineWidth + tokenWidth > range last
				ifTrue: [
					lines add: ((BTTextLine origin: range first @ totalHeight extent: range last - range first @ lineHeight)
						baseline: lineAscent;
						start: lineStartIndex;
						stop: tokenStart - 1;
						text: self text;
						layout: self).
					
					lineStartIndex := tokenStart.
					totalWidth := totalWidth max: lineWidth.
					totalHeight := totalHeight + lineHeight + self lineSpacing.
					range := self rangeForLineAtYFrom: totalHeight to: totalHeight + activeFont lineGrid.
					lineHeight := activeFont lineGrid.
					lineAscent := activeFont ascent.
					lineWidth := tokenWidth]
				ifFalse: [lineWidth := lineWidth + tokenWidth].
				0]].
	
	lines add: ((BTTextLine origin: 0 @ totalHeight extent: lineWidth @ lineHeight)
		baseline: lineAscent;
		start: lineStartIndex;
		stop: self text size;
		text: self text;
		layout: self).
	
	totalWidth := totalWidth max: lineWidth.
	totalHeight := totalHeight + lineHeight.
	
	extent := totalWidth @ totalHeight
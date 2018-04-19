as yet unclassified
processLayout

	| totalWidth lineWidth totalHeight lineHeight lineStartIndex range |
	lineWidth := 0.
	lineHeight := 0.
	totalWidth := 0.
	totalHeight := 0.
	lineStartIndex := 1.
	lines := OrderedCollection new.
	
	self
		runsDo: [:start :stop :newFont |
			newFont lineGrid > lineHeight ifTrue: [range := self rangeForLineAtYFrom: totalHeight to: totalHeight + newFont lineGrid].
			lineHeight := lineHeight max: newFont lineGrid.
			newFont]
		tokensDo: [:activeFont :tokenStart :tokenStop :emitLine | | tokenWidth isLastLine tokenRemainder |
			tokenWidth := activeFont widthOfString: self text string from: tokenStart to: tokenStop.
			isLastLine := tokenStop = self text size.
			tokenRemainder := 0.
			
			(range first + lineWidth + tokenWidth > range last or: [isLastLine or: [(self text string at: tokenStop) = Character cr]])
				ifTrue: [ | lineStopIndex |
					"make sure the last token actually fit and we didn't split on the last line"
					isLastLine := isLastLine and: [range first + lineWidth + tokenWidth <= range last].
					
					isLastLine
						ifTrue: [
							lineStopIndex := tokenStop.
							lineWidth := lineWidth + tokenWidth]
						ifFalse: [
							lineStopIndex := tokenStart - 1.
							
							" single token in a line and not last line --> token that is too long "
							lineWidth = 0 ifTrue: [
								self
									cutToken: self text
									from: tokenStart
									to: tokenStop
									toMaxOf: range size - 1
									font: activeFont
									do: [:stop :width | lineStopIndex := stop. lineWidth := width].
								tokenRemainder := tokenStop - lineStopIndex]].
					
					emitLine value: lineStartIndex value: lineStopIndex value: (range first @ totalHeight extent: lineWidth @ lineHeight).
					totalWidth := totalWidth max: lineWidth.
					totalHeight := totalHeight + lineHeight.
					
					" all these operations are unnecessary if we're on the last line "
					isLastLine ifFalse: [
						totalHeight := totalHeight + self lineSpacing.
						lineStartIndex := lineStopIndex + 1.
						range := self rangeForLineAtYFrom: totalHeight to: totalHeight + activeFont lineGrid.
						lineHeight := activeFont lineGrid.
						lineWidth := tokenRemainder = 0 ifTrue: [tokenWidth] ifFalse: [0]]]
				ifFalse: [lineWidth := lineWidth + tokenWidth].
				tokenRemainder].
	
	extent := totalWidth @ totalHeight
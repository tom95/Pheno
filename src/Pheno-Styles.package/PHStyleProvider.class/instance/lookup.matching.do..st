lookup
lookup: aSymbol matching: aStyleContext do: aBlock

	styles do: [:style |
		(style matches: aStyleContext) ifTrue: [
			style getProperty: aSymbol ifPresent: [:value | aBlock value: value value: style priority value: style]]]
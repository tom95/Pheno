attributes
fontSize: aNumberOrString

	^ self setProperty: #fontSize to: (self parseFontSize: aNumberOrString)
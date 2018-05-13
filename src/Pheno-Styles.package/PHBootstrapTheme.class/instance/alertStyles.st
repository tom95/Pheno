styles
alertStyles

	(self for: #alert)
		padding: 20 @ 12;
		borderWidth: 1.
	
	self themeColors with: self themeColorTypes do: [:color :type | | selector |
		selector := {#alert. type}.
		
		(self for: selector)
			backgroundColor: (self modifyLevelOf: color by: -10);
			borderColor: (self modifyLevelOf: color by: -9);
			color: (self modifyLevelOf: color by: 6)]
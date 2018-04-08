styles
defaultThemeColorVariationFor: aClassSymbol

	self themeColors with: self themeColorTypes do: [:color :type | | selector |
		selector := {aClassSymbol. type}.
		(self for: selector)
			backgroundColor: color;
			borderColor: color;
			color: (self foregroundColorForBackgroundColor: color).
		
		(self for: selector state: #(hover))
			backgroundColor: (color adjustBrightness: -0.075);
			borderColor: (color adjustBrightness: -0.1).
		
		(self for: (BTClassSelector for: selector state: #(hover active)),
			(BTClassSelector for: selector state: #active))
			backgroundColor: (color adjustBrightness: -0.1);
			borderColor: (color adjustBrightness: -0.125)]
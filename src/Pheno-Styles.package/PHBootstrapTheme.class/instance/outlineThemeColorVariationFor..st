styles
outlineThemeColorVariationFor: aClassSymbol

	self themeColors with: self themeColorTypes do: [:color :type | | selector |
		selector := {aClassSymbol. type}.
		(self for: selector)
			backgroundColor: Color transparent;
			borderColor: color;
			color: color.
		
		(self for: selector state: #(hover))
			backgroundColor: color;
			borderColor: color;
			color: (self foregroundColorForBackgroundColor: color).
		
		(self for: (PHClassSelector for: selector state: #(hover active)),
			(PHClassSelector for: selector state: #active),
			(PHClassSelector for: selector state: #selected))
			backgroundColor: (color adjustBrightness: -0.1);
			borderColor: (color adjustBrightness: -0.1);
			color: (self foregroundColorForBackgroundColor: (color adjustBrightness: -0.1))]
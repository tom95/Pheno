styles
badgeStyles

	(self for: #(badge))
		borderRadius: 0.25 rem;
		color: #fff;
		spacing: 5;
		fontWeight: 'bold';
		backgroundColor: #'343a40'.
	
	self themeColors with: self themeColorTypes do: [:color :type |
		(self for: {#badge. type})
			backgroundColor: color;
			color: (self foregroundColorForBackgroundColor: color)]
styles
checkboxStyles

	(self for: #checkbox)
		borderRadius: 0.25rem;
		backgroundColor: #'868e96';
		border: 1 color: #'868e96';
		color: #fff.
	
	(self for: #checkbox state: #hover)
		backgroundColor: #'727b84';
		borderColor: #'6c757d'.
	
	(self for: (PHClassSelector for: #checkbox state: #(hover active)),
		(PHClassSelector for: #checkbox state: #active))
		backgroundColor: #'6c757d';
		borderColor: #'666e76'.
	
	(self for: (PHClassSelector for: #checkbox state: #selected))
		icon: #iconCheck.
	
	self outlineThemeColorVariationFor: #checkbox
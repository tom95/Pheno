styles
buttonStyles

	(self for: #button)
		borderRadius: 0.25rem;
		backgroundColor: #'868e96';
		border: 1 color: #'868e96';
		padding: 0.75rem @ 0.0rem;
		spacing: 0.25rem;
		color: #fff.
	
	(self for: #(button small))
		padding: 0.5rem @ 0.5rem.
	
	self flag: #fixme. "should drop this asap. see CodeHolder>>buttonHeight for the sad story"
	(self for: #(button btButton))
		padding: 0.75rem @ 0.625rem.
	
	(self for: (PHClassSelector for: #button state: #(disabled)),
		(PHClassSelector for: #button state: #(disabled hover)),
		(PHClassSelector for: #button state: #(disabled hover active)))
		backgroundColor: #afb5ba;
		borderColor: #afb5ba.
	
	(self for: #button state: #hover)
		backgroundColor: #'727b84';
		borderColor: #'6c757d'.
	
	(self for: (PHClassSelector for: #(button) state: #(hover active)),
		(PHClassSelector for: #(button) state: #active))
		backgroundColor: #'6c757d';
		borderColor: #'666e76'.
	
	(self for: (PHClassSelector for: #button state: #selected), (PHClassSelector for: #button state: #(selected hover)))
		borderWidth: 2;
		borderColor: (Color white alpha: 0.5).
	
	self defaultThemeColorVariationFor: #button.
	
	(self for: #iconButton)
		color: #'999'.
	(self for: #iconButton state: #hover)
		color: #'444'.
	(self for: #iconButton state: #(active hover))
		color: #'000'
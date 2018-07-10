as yet unclassified
exportWithPrefix: aString
	" gm convert aString*.png combined.pdf "

	slides submorphs doWithIndex: [:slide :index | | form destForm |
		form := slide imageForm.
		destForm := Form extent: form extent depth: 32.
		destForm getCanvas
			fillColor: Color white;
			translucentImage: form at: 0 @ 0;
			drawString: index asString at: 30 asPoint font: (PHStyleContext fontForSize: 22) color: Color black.
		destForm writePNGfileNamed: aString, (index printStringPadded: 3), '.png'.
		self showNextSlide; fullBounds]
as yet unclassified
buttonStyles

	(self for: #button)
		border: 1 color: #c6c6c6;
		backgroundColor: Color transparent;
		color: #'333'.
	
	(self for: #button asStyle/#hover)
		backgroundColor: (Color white alpha: 0.4).
	
	(self for: #button asStyle/#active,
		#buttonGroup > #button/#active,
		#button/#selected,
		#buttonGroup > #button/#selected)
		border: 1 color: #b4b4b4;
		backgroundColor: ((Color fromString: '#cccccc') alpha: 0.4)
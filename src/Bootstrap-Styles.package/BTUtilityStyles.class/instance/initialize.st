as yet unclassified
initialize

	super initialize.
	
	self add: ((BTStyle for: #withPadding)
		padding: 1.0rem).
		
	self add: ((BTStyle for: #noSpacing)
		spacing: 0).
	
	self add: ((BTStyle for: #noPadding)
		padding: 0)
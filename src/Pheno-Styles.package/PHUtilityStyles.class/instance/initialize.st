as yet unclassified
initialize

	super initialize.
	
	self add: ((PHStyle for: #withPadding)
		padding: 1.0rem).
		
	self add: ((PHStyle for: #noSpacing)
		spacing: 0).
	
	self add: ((PHStyle for: #noPadding)
		padding: 0)
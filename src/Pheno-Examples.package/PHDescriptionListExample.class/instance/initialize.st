as yet unclassified
initialize

	super initialize.
	
	self add: (PHDescriptionList items: {
		{'label1'. 'test'}.
		{'<b>longer label 2</b>'. PHTextArea new expand: true}.
		{PHIcon iconEdit. PHTextArea new expand: true}})
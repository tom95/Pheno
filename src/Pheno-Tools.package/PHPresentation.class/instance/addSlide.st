as yet unclassified
addSlide

	slides add: (PHWidget new
		addStyleClass: #slide;
		expand: true).
	slides selectWidgetAt: slides submorphCount.
	self updateCounter
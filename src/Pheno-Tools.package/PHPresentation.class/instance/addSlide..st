accessing
addSlide: aWidget

	slides add: (aWidget
		addStyleClass: #slide;
		expand: true;
		yourself).
	slides selectWidgetAt: slides submorphCount.
	self updateCounter.
	^ slides lastSubmorph
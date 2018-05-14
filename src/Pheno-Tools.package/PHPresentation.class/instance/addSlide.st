as yet unclassified
addSlide

	slides add: (PHWidget new
		addStyleClass: #slide;
		expand: true;
		changeDragAndDrop;
		yourself).
	slides selectWidgetAt: slides submorphCount.
	self updateCounter.
	^ slides lastSubmorph
as yet unclassified
addSlide: aWidget

	slides add: (aWidget
		addStyleClass: #slide;
		expand: true;
		changeDragAndDrop;
		yourself).
	slides selectWidgetAt: slides submorphCount.
	self updateCounter.
	^ slides lastSubmorph
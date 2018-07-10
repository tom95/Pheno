as yet unclassified
addSlides: aCollectionOfWidget

	aCollectionOfWidget do: [ :widget |
		slides add: (widget
			addStyleClass: #slide;
			expand: true;
			yourself)].
	slides selectWidgetAt: slides submorphCount.
	self updateCounter.
	^ slides lastSubmorph
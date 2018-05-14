as yet unclassified
copyCurrentSlide

	slides add: (self currentSlide shallowCopy).
	slides selectWidgetAt: slides submorphCount.
	self updateCounter.
	^ slides lastSubmorph
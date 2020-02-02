initialize-release
createPageCounter

	pageCounter := PHLabel new align: #(center center).
	self updateCounter.
	^ pageCounter
as yet unclassified
drawSubMenuMarkerOn: aCanvas 

	self hasSubMenu ifTrue: [
		| subMenuMarker subMenuMarkerPosition | 
		subMenuMarker := self subMenuMarker.
		subMenuMarkerPosition := self right - subMenuMarker width - self layoutInset right @ (self top + self bottom - subMenuMarker height // 2).
		aCanvas paintImage: subMenuMarker at: subMenuMarkerPosition ]
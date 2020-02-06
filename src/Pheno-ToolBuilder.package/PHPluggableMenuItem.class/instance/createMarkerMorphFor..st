private
createMarkerMorphFor: marker

	^ (super createMarkerMorphFor: marker)
		position: self left + self layoutInsetRectangle left
			@ (self top + ((self height / 2) - (marker height / 2)));
		yourself
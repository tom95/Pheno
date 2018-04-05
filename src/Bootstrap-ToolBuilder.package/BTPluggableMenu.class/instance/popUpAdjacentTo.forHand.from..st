as yet unclassified
popUpAdjacentTo: rightOrLeftPoint forHand: hand from: sourceItem 
	"Present this menu at the given point under control of the given hand."
	
	| tryToPlace selectedOffset rightPoint leftPoint |
	hand world startSteppingSubmorphsOf: self.
	popUpOwner := sourceItem.
	
	self fullBounds.
	self updateColor.

	"ensure layout is current"
	selectedOffset := (selectedItem
				ifNil: [self items first]) position - self position - (0 @ (self layoutInset top + self styleContext margin top)).
	
	tryToPlace := [:where :mustFit | | delta | 
			self position: where - selectedOffset.
			delta := self boundsInWorld amountToTranslateWithin: sourceItem worldBounds.
			(delta x = 0
					or: [mustFit])
				ifTrue: [delta = (0 @ 0)
						ifFalse: [self position: self position + delta].
					sourceItem world addMorphFront: self.
					^ self]].
	rightPoint := rightOrLeftPoint first + ((self layoutInset right + self borderWidth) @ 0).
	leftPoint := rightOrLeftPoint last + ((self layoutInset left + self borderWidth - self width) @ 0).
	tryToPlace
		value: rightPoint value: false;
		 value: leftPoint value: false;
		 value: rightPoint value: true.
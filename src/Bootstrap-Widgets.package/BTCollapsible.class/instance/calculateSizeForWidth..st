layout
calculateSizeForWidth: aNumber  
	| fullSize |

	fullSize := animating or: [collapsed not].
	
	^ container hasSubmorphs
		ifFalse: [BTSizeRequest fixed: self minSize + self paddingAsPoint]
		ifTrue: [ | preferred |
			preferred := (container firstSubmorph calculateSizeForWidth: aNumber - self paddingAsPoint x) + self paddingAsPoint.
			fullSize
				ifTrue: [preferred]
				ifFalse: [BTSizeRequest fixed: preferred minSize x @ 0]]
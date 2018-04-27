layout
calculateSizeForWidth: aNumber  
	| fullSize |

	fullSize := animating or: [collapsed not].
	
	^ container hasSubmorphs
		ifFalse: [ | size |
			size := self minSize + self paddingAsPoint.
			PHSizeRequest fixed: (size x @ (fullSize ifTrue: [size y] ifFalse: [0]))]
		ifTrue: [ | preferred |
			preferred := (container firstSubmorph calculateSizeForWidth: aNumber - self paddingAsPoint x) + self paddingAsPoint.
			fullSize
				ifTrue: [preferred]
				ifFalse: [PHSizeRequest fixed: preferred minSize x @ 0]]
layout
adjustPreferredSize: aSizeRequest
	" makes sure minSize and maxSize are adhered to "
	| min natural naturalX naturalY |
	min := aSizeRequest minSize max: minSize.
	
	natural := aSizeRequest naturalSize.
	naturalX := maxSize x < 0 ifTrue: [natural x] ifFalse: [natural x min: maxSize x].
	naturalY := maxSize y < 0 ifTrue: [natural y] ifFalse: [natural y min: maxSize y].
	
	^ aSizeRequest
		minSize: min;
		naturalSize: (naturalX @ naturalY max: min);
		yourself
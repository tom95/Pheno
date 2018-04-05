*SVG-Morphic
alpha: fraction
	"Answer a new fill with the extra transparency."

	^self copy 
		color: (self color alphaMixed: fraction)
*SVG-Morphic
alphaMixed: proportion
	"Answer this color with the alpha modified by proportion."

	^ Color
		r: self red 
		g: self green
		b: self blue
		alpha: self alpha * proportion
*SVG-Morphic
alphaMixed: fraction
	"Answer a new fill with the extra transparency."

	^self copy colorRamp: (colorRamp collect:[:assoc| assoc key -> (assoc value alphaMixed: fraction)])
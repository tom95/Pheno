*Pheno-ToolBuilder-private-override
createMarkerMorphFor: marker

	^ ImageMorph new
		image: marker;
		position: self left @ (self top + 2);
		yourself
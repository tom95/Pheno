as yet unclassified
antialiasingLevel: anInteger
	"Set the level of antialiasing to use when drawing"

	super antialiasingLevel: anInteger.
	self submorphsDo: [:m |
		m antialiasingLevel: anInteger]
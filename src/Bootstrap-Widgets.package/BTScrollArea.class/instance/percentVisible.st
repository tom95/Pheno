layout
percentVisible

	^ (self width / (container firstSubmorph width max: 1))
	@ (self height / (container firstSubmorph height max: 1))
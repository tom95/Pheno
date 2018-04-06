class initialization
initialize
	super initialize.
	Smalltalk addToStartUpList: self after: FileDirectory.
	Smalltalk addToShutDownList: self
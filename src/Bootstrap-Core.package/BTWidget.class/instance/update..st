change reporting
update: aspect

	super update: aspect.
	aspect == self styleContext ifTrue: [self updateStyleProperties]
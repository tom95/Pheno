helper
asProvider
	" convert this provider to a styleprovider with just this single style "

	^ PHStyleProvider new
		add: self;
		yourself
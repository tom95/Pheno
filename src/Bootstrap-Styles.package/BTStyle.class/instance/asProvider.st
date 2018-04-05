helper
asProvider
	" convert this provider to a styleprovider with just this single style "

	^ BTStyleProvider new
		add: self;
		yourself
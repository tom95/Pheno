as yet unclassified
initialize

	super initialize.
	
	self
		add: BTIcon iconEdit;
		add: BTIcon iconLinux;
		add: (BTIconButton name: #iconEdit);
		add: (BTIconButton name: #iconFont)
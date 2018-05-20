as yet unclassified
initialize

	super initialize.
	
	entry := PHTextArea new.
	
	self
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconBold) when: #clicked evaluate: [entry toggleAttributeForSelection: TextEmphasis bold]);
			add: ((PHButton icon: #iconStrikethrough) when: #clicked evaluate: [entry toggleAttributeForSelection: TextEmphasis struckOut]));
		add: entry
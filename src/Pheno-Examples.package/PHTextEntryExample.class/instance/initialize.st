as yet unclassified
initialize

	super initialize.
	
	entry := PHTextArea new multiLine: true; minRows: 7.
	
	self
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconBold) when: #clicked evaluate: [entry toggleAttributeForSelection: TextEmphasis bold]);
			add: ((PHButton icon: #iconStrikethrough) when: #clicked evaluate: [entry toggleAttributeForSelection: TextEmphasis struckOut]));
		add: entry
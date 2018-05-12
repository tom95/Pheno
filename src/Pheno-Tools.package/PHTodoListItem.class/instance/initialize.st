as yet unclassified
initialize 

	super initialize.
	
	self
		withLayout;
		add: (PHPage row
			add: (checkbox := PHCheckbox new
				when: #toggled send: #toggled to: self);
			add: (label := PHTextEntry new))
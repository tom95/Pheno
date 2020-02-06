initialize-release
initialize 

	super initialize.
	
	self
		add: (progressBar := PHProgressBar new percentage: 0);
		add: (PHScrollArea new
			expand: true;
			add: (itemsPage := PHPage column expand: true));
		add: (PHPage row
			add: (newItemArea := PHTextArea new expand: true);
			add: ((PHButton icon: #iconPlus)
				when: #clicked send: #addItem to: self)).
				
	newItemArea
		when: #confirmed send: #addItem to: self
		
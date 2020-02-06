initialize-release
initialize

	super initialize.
	
	self
		add: (PHWritableTagList new tags: {'First Tag'. 'Second Tag'});
		add: (PHTagList new tags: {'First Tag'. 'Second Tag'})
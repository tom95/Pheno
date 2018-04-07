as yet unclassified
initialize

	super initialize.
	
	self
		add: (BTWritableTagList new tags: {'First Tag'. 'Second Tag'});
		add: (BTTagList new tags: {'First Tag'. 'Second Tag'})
updating
updateTarget

	classes tags: self target styleContext classes.
	
	allStyles := IdentitySet new.
	self allStylePropertiesDo: [:property |
		allStyles addAll: (self target styleContext debugLookup: property)].
					
	styleProperties
		removeAllMorphs;
		addAll: (allStyles collect: [:style |
			PHListGroupItem new
				addStyleClass: #clickable;
				add: (PHLabel text: style printString);
				when: #clicked send: #explore to: style]).
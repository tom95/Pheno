accessing
checked: aBoolean

	checked := aBoolean.
	
	self
		selected: aBoolean;
		triggerToggled: aBoolean.
	
	self iconName: self styleContext icon
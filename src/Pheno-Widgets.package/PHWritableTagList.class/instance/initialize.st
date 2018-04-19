initialize-release
initialize

	super initialize.
	
	inputBadge := PHBadge new.
	
	input := PHTextEntry new
		wrap: #never;
		placeholder: 'New Tag ...';
		when: #confirmed send: #requestAddTag: to: self.
	
	self add: (inputBadge add: input)
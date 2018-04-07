initialize-release
initialize

	super initialize.
	
	inputBadge := BTBadge new.
	
	input := BTTextEntry new
		wrap: #never;
		placeholder: 'New Tag ...';
		when: #confirmed send: #requestAddTag: to: self.
	
	self add: (inputBadge add: input)
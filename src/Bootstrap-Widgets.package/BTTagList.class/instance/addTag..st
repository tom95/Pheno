hierarchy
addTag: aString

	self tags add: aString.
	self
		add: ((BTTag text: aString)
			when: #deleted send: #removeTag: to: self with: aString;
			yourself)
		at: self insertionIndex
styling
toggleAttribute: aTextAttribute from: aNumber to: anotherNumber
	" if the attribute already exists in the range, remove it. Otherwise add it. "
	
	self text isText ifFalse: [^ self addAttribute: aTextAttribute from: aNumber to: anotherNumber].
	
	self
		findAttribute: aTextAttribute
		from: aNumber
		to: anotherNumber
		ifPresent: [:attr | self removeAttribute: attr from: aNumber to: anotherNumber]
		ifAbsent: [self addAttributeForSelection: aTextAttribute]
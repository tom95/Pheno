accessing
logicalAttributes
	self flag: #todo.
	^self text collect: [ :letter | #() ]
displaying
attachTo: aClickable
	" makes the given clickable toggle this dialog "
	
	aClickable when: #clickedWithEvent evaluate: [:event |
		self owner
			ifNil: [self openFor: aClickable event: event]
			ifNotNil: [self delete]]
displaying
hoverAttachTo: aClickable
	" makes the given clickable toggle this dialog whenever the mouse enters and leaves it "
	
	aClickable when: #hovered evaluate: [:hovered :event |
		self owner
			ifNil: [self openFor: aClickable event: event]
			ifNotNil: [self delete]]
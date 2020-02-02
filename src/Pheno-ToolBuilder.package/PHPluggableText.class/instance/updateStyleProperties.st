styles
updateStyleProperties

	super updateStyleProperties.
	
	self updateStylePropertiesReal.
	textMorph margins ~= self layoutInset ifTrue: [textMorph margins: self layoutInset]
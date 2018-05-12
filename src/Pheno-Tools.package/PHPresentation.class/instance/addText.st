as yet unclassified
addText

	| text |
	self currentSlide add: (text := (PHTextEntry placeholder: 'Text ...')
		center: self currentSlide center;
		multiLine: true;
		resizeToPreferred).
	
	text
		when: #changed send: #resizeToPreferred to: text;
		grabKeyboard
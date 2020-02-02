tests
testTextObject
	
	textEntry text: 'test text abc def ghi'.
	textEntry text: (textEntry text asText addAttribute: TextEmphasis bold from: 2 to: 5).
	
	(self expect: textEntry text isText) to be: true
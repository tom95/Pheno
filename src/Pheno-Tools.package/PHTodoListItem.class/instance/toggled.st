updating
toggled 

	self triggerEvent: #toggleChecked.
	
	self isChecked
		ifTrue: [label addAttribute: TextEmphasis struckOut]
		ifFalse: [label removeAttribute: TextEmphasis struckOut]
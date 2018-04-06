accessing
primaryFormClickable: aClickable
	" set a clickable that will emit its #clicked signal when any of the form inputs
	  of this page emit their #confirmed event "
	
	primaryFormClickable ifNotNil: [
		self formInputs do: [:input | input
			removeActionsWithReceiver: primaryFormClickable
			forEvent: #confirmed]].
	
	primaryFormClickable := aClickable.

	self formInputs do: [:input |
		input when: #confirmed send: #triggerClicked: to: primaryFormClickable with: nil]
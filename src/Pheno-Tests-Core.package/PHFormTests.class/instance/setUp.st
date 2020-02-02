running
setUp
	super setUp.

	window := self verticalTopLevel.
	inputs := (1 to: 3) collect: [ :i | PHTextArea new addTo: window ].
	button := PHButton new addTo: window.
	
	window primaryFormClickable: button
as yet unclassified
setUp
	super setUp.

	window := self verticalTopLevel.
	inputs := (1 to: 3) collect: [ :i | BTTextArea new addTo: window ].
	button := BTButton new addTo: window.
	
	window primaryFormClickable: button
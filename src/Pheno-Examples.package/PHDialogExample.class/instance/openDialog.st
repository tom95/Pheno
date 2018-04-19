as yet unclassified
openDialog

	| dialog |
	dialog := PHDialog new.
	dialog content: (PHPage new withPadding; add: ((PHButton text: 'Accept') when: #clicked send: #accept: to: dialog with: nil)).
	
	" opening a dialog returns a promise that can be rejected/accepted with PHDialog>>accept:/cancel: Closing the dialog cancel:'s "
	(dialog openFor: self)
		then: [label text: 'You accept!'];
		ifRejected: [label text: 'Rejection :(']
as yet unclassified
openDialog

	| dialog |
	dialog := BTDialog new.
	dialog content: (BTPage new withPadding; add: ((BTButton text: 'Accept') when: #clicked send: #accept: to: dialog with: nil)).
	
	" opening a dialog returns a promise that can be rejected/accepted with BTDialog>>accept:/cancel: Closing the dialog cancel:'s "
	(dialog openFor: self)
		then: [label text: 'You accept!'];
		ifRejected: [label text: 'Rejection :(']
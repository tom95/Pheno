as yet unclassified
createBoxForm: aButtonSymbol parent: aParentStyleContext size: aNumber

	| context |
	context := BTStyleContext new
		parent: aParentStyleContext;
		addClass: #windowButton;
		addClass: aButtonSymbol;
		yourself.

	^ context createIconFormSize: aNumber
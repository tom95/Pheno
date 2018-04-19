as yet unclassified
createBoxForm: aButtonSymbol parent: aParentStyleContext size: aNumber

	| context |
	context := PHStyleContext new
		parent: aParentStyleContext;
		addClass: #windowButton;
		addClass: aButtonSymbol;
		yourself.

	^ context createIconFormSize: aNumber
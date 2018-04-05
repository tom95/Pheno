as yet unclassified
addLine
	"Append a divider line to this menu. Suppress duplicate lines."

	| context |
	self hasItems ifFalse: [^ self].
	self lastSubmorph knownName = #line ifTrue: [^ self].
	
	context := BTStyleContext new
		addClass: #menuItemSeparator;
		parent: self styleContext;
		yourself.
	
	self addMorphBack: (BTDividerMorph new
		name: #line; "see above"
		yourself).
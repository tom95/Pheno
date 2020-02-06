updating
updateCollapseBox

	collapseBox labelGraphic: (self createBoxForm: (self isCollapsed
		ifTrue: [#windowUncollapseButton] ifFalse: [#windowCollapseButton]))
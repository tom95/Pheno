as yet unclassified
labelHeight
	"Answer the height for the window label.  The standard behavior is at bottom; a hook is provided so that models can stipulate other heights, in support of various less-window-looking demos."

	| aHeight |
	(model notNil and: [model respondsTo: #desiredWindowLabelHeightIn:]) ifTrue:
		[(aHeight := model desiredWindowLabelHeightIn: self) ifNotNil: [^ aHeight]].

	labelArea updateStylePropertiesReal.
	^ (label height max: self class boxExtent y) + labelArea layoutInset top + labelArea layoutInset bottom
	"^ label ifNil: [0] ifNotNil:
		 [label height + self cellInset max:
			(collapseBox ifNotNil: [collapseBox height] ifNil: [10])]"
as yet unclassified
minWidth

	| subMenuWidth iconWidth markerWidth |
	subMenuWidth := self hasSubMenu
		ifTrue: [ self class markerSize ]
		ifFalse: [ 0 ].
	iconWidth := self hasIcon
		ifTrue: [ self icon width + self iconSpacing ]
		ifFalse: [ 0 ].
	markerWidth := self hasMarker
		ifTrue: [ self submorphBounds width + 8 ]
		ifFalse: [ 0 ].
	^(self fontToUse widthOfString: contents)
		+ subMenuWidth + iconWidth + markerWidth + self stringMargin + self layoutInset left + self layoutInset right
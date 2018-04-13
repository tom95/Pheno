extent-fix
systemWindowExtent: aPoint
	"see my extent: for details on the sad story and the necessity of this"
	
	| newExtent |
	newExtent := self isCollapsed
		ifTrue: [aPoint]
		ifFalse: [aPoint max: self minimumExtent].
	newExtent = self extent ifTrue: [^ self].
	
	isCollapsed
		ifTrue: [self morphExtent: newExtent x @ (self labelHeight + self layoutInset directionsAsPoint y)]
		ifFalse: [self morphExtent: newExtent].
	isCollapsed
		ifTrue: [collapsedFrame := self bounds]
		ifFalse: [fullFrame := self bounds]
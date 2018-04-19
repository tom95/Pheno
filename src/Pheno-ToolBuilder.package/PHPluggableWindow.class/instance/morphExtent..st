extent-fix
morphExtent: aPoint
	"see my extent: for details on the sad story and the necessity of this"

	(bounds extent closeTo: aPoint) ifTrue: [^ self].
	self changed.
	bounds := (bounds topLeft extent: aPoint) rounded.
	self removeProperty: #dropShadow.
	self layoutChanged.
	self changed.
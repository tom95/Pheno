as yet unclassified
addSlideWithCenterBox

	| box |
	box := PHPage column expand: true; align: #(center center).
	self addSlideWithLayout add: box.
	^ box
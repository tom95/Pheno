as yet unclassified
addSlideWithCenterBoxAndTitle: aString

	| box title |
	title := (PHLabel text: aString) pointSize: 45; align: #(center start).
	box := PHPage column expand: true; align: #(center center).
	self addSlideWithLayout
		add: title;
		add: box.
		
	^ box
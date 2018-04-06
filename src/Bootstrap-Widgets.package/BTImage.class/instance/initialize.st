initialize-release
initialize
	super initialize.

	self
		addStyleClass: #image;
		scalingMode: #shrink;
		fillMode: #center;
		align: #(start start);
		framed: true
initialize-release
initialize
	container := TransformMorph new
		color: Color transparent;
		yourself.
	
	transitionDuration := 250.
	animating := false.
	collapsed := false.
	
	super initialize.
	
	self
		addMorph: container;
		addStyleClass: #collapsible;
		addFallbackStyles: ((BTStyle for: #collapsible) spacing: 15; padding: 15)
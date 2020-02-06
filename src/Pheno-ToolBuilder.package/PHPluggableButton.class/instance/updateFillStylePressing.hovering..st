initialize-release
updateFillStylePressing: isPressing hovering: isHovering

	self styleContext
		stateActive: (isPressing or: [self getModelState]);
		stateHover: (isHovering or: [isPressing]).
	
	self changed
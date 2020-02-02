initialization
setTitleParametersFor: aMenuTitle

	| context |
	context := PHStyleContext new
		parent: self styleContext;
		addClass: #menuTitle.
	
	aMenuTitle
		color: context backgroundColor;
		borderStyle: BorderStyle default;
		borderColor: context borderColor;
		borderWidth: context borderWidth top;
		cornerStyle: (context borderRadius top > 0 ifTrue: [#rounded] ifFalse: [#square]);
		vResizing: #shrinkWrap;
		wrapCentering: #center;
		cellPositioning: #center;
		cellInset: context margin top;
		layoutInset: context padding.
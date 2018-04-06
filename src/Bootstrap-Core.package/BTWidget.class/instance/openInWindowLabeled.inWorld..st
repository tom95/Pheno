initialize-release
openInWindowLabeled: aString inWorld: aWorld

	| window |
	window := BTPluggableWindow new.
	window
		bounds: (RealEstateAgent initialFrameFor: window initialExtent: self fullBounds extent world: aWorld);
		addMorph: self frame: (0 @ 0 extent: 1 @ 1).
	
	aWorld addMorph: window.
	window beKeyWindow.
	aWorld startSteppingSubmorphsOf: window.
	^ window
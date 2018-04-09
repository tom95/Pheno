as yet unclassified
testShrinkAlignment

	| image topLevel |
	image := BTImage new
		form: ((Form extent: 200 @ 200 depth: 32)
			fillFromXColorBlock: [:x | Color r: x g: 0.0 b: 0.5]);
		scalingMode: #shrink.
	
	topLevel := self verticalTopLevel
		add: image;
		extent: 250 @ 50;
		fullBounds;
		yourself.
		
	(self expect: image extent) to equal: 50 @ 50
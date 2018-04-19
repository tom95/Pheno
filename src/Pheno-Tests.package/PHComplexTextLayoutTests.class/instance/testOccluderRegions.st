as yet unclassified
testOccluderRegions

	| layout |
	layout := PHComplexTextLayout new
		width: 200;
		font: PHFakeFont new;
		text: (String new: 1000 withAll: $a).
	
	layout occluderRegions: {
			100 @ 0 extent: 70 @ layout lineHeight.
			-10 @ (3 * layout lineHeight) extent: 60 @ layout lineHeight.
			150 @ (4 * layout lineHeight) extent: 50 @ layout lineHeight}.
	
	(self expect: (layout lines at: 1)) to equal: (0 @ (layout lineHeight * 0) extent: 100 @ layout lineHeight).
	(self expect: (layout lines at: 2)) to equal: (0 @ (layout lineHeight * 1) extent: 100 @ layout lineHeight).
	(self expect: (layout lines at: 3)) to equal: (0 @ (layout lineHeight * 2) extent: 200 @ layout lineHeight).
	(self expect: (layout lines at: 4)) to equal: (50 @ (layout lineHeight * 3) extent: 150 @ layout lineHeight).
	(self expect: (layout lines at: 5)) to equal: (50 @ (layout lineHeight * 4) extent: 100 @ layout lineHeight).
	(self expect: (layout lines at: 6)) to equal: (0 @ (layout lineHeight * 5) extent: 150 @ layout lineHeight).
	(self expect: (layout lines at: 7)) to equal: (0 @ (layout lineHeight * 6) extent: 200 @ layout lineHeight)
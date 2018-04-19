as yet unclassified
testRangeForLineAtY

	| layout |
	layout := PHComplexTextLayout new
		width: 200;
		font: PHFakeFont new;
		text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam hendrerit gravida suscipit. Praesent cursus, turpis sed convallis ultrices, ligula nulla tempus lacus, et euismod mi magna vitae libero. Proin cursus, metus eget tempor sodales, magna nulla sagittis lacus, at lobortis elit dui nec dolor. Sed pretium, felis eu rutrum volutpat, est erat ultrices purus, nec malesuada ex lectus quis nibh. Maecenas erat leo, tristique ut diam venenatis, ultricies consequat urna. Maecenas pharetra massa eu orci finibus, vel ornare turpis suscipit. Sed efficitur at ligula sed rhoncus. Aliquam felis mi, consectetur vitae condimentum at, pharetra non quam.'.
	
	layout occluderRegions: {
			100 @ 0 extent: 70 @ layout lineHeight.
			-10 @ (3 * layout lineHeight) extent: 60 @ layout lineHeight.
			150 @ (4 * layout lineHeight) extent: 50 @ layout lineHeight}.
	
	(self expect: (layout rangeForLineAtY: 0 * layout lineHeight)) to equal: (0 to: 100).
	(self expect: (layout rangeForLineAtY: 1 * layout lineHeight)) to equal: (0 to: 100).
	(self expect: (layout rangeForLineAtY: 2 * layout lineHeight)) to equal: (0 to: 200).
	(self expect: (layout rangeForLineAtY: 3 * layout lineHeight)) to equal: (50 to: 200).
	(self expect: (layout rangeForLineAtY: 4 * layout lineHeight)) to equal: (50 to: 150).
	(self expect: (layout rangeForLineAtY: 5 * layout lineHeight)) to equal: (0 to: 150).
	(self expect: (layout rangeForLineAtY: 6 * layout lineHeight)) to equal: (0 to: 200)
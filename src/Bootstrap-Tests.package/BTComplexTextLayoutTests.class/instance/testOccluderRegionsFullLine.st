as yet unclassified
testOccluderRegionsFullLine

	| layout |
	layout := BTComplexTextLayout new
		width: 200;
		text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam hendrerit gravida suscipit. Praesent cursus, turpis sed convallis ultrices, ligula nulla tempus lacus, et euismod mi magna vitae libero. Proin cursus, metus eget tempor sodales, magna nulla sagittis lacus, at lobortis elit dui nec dolor. Sed pretium, felis eu rutrum volutpat, est erat ultrices purus, nec malesuada ex lectus quis nibh. Maecenas erat leo, tristique ut diam venenatis, ultricies consequat urna. Maecenas pharetra massa eu orci finibus, vel ornare turpis suscipit. Sed efficitur at ligula sed rhoncus. Aliquam felis mi, consectetur vitae condimentum at, pharetra non quam.'.
	
	layout occluderRegions: {100 @ (2 * layout lineHeight) extent: 300 @ (layout lineHeight * 3)}.
	
	(self expect: (layout lines at: 1)) to equal: (0 @ (layout lineHeight * 0) extent: 200 @ layout lineHeight).
	(self expect: (layout lines at: 2)) to equal: (0 @ (layout lineHeight * 1) extent: 200 @ layout lineHeight).
	(self expect: (layout lines at: 3)) to equal: (0 @ (layout lineHeight * 5) extent: 200 @ layout lineHeight).
	(self expect: (layout lines at: 4)) to equal: (50 @ (layout lineHeight * 6) extent: 200 @ layout lineHeight)
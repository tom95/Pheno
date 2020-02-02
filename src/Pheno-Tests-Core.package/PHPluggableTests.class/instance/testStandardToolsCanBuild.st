tests
testStandardToolsCanBuild

	| selectors |
	selectors := (self toolSet menuItems copyWithout: #-)
		collect: [:pair | pair second]
		thenSelect: [:selector | selector beginsWith: #open].
	selectors do: [:selector |
		self
			shouldnt: [self toolSet perform: selector]
			raise: Error, Warning, Halt].
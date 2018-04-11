as yet unclassified
baseline: spec

	<baseline>
	
	spec for: #common do: [
		spec package: 'JSON' with: [spec repository: 'http://www.squeaksource.com/JSON'].
		spec package: 'SVGMorph' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'].
		
		spec
			package: 'Bootstrap' with: [spec requires: #('JSON' 'SVGMorph')];
			package: 'default' with: #('Bootstrap');
			package: 'tests' with: #('Bootstrap')]
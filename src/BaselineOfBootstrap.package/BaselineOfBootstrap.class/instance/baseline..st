baseline
baseline: spec

	<baseline>
	
	spec for: #common do: [
		spec package: 'JSON' with: [spec repository: 'http://www.squeaksource.com/JSON'].
		spec package: 'SVG-Morphic' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'].
		
		spec
			package: 'Bootstrap' with: [spec requires: #('JSON' 'SVG-Morphic')];
			
			group: 'default' with: #('Bootstrap');
			group: 'tests' with: #('Bootstrap')]
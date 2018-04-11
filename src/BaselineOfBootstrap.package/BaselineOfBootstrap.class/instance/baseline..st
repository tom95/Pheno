as yet unclassified
baseline: spec

	<baseline>
	
	spec for: #common do: [
		spec package: 'JSON' with: [spec repository: 'http://www.squeaksource.com/JSON'].
		spec package: 'SVG-Morphic'.
		
		spec
			package: 'Bootstrap' with: [spec requires: #('JSON' 'SVG-Morphic')];
			package: 'default' with: #('Bootstrap');
			package: 'tests' with: #('Bootstrap')]
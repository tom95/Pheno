baseline
baseline: spec

	<baseline>
	
	spec for: #common do: [
		spec package: 'JSON' with: [spec repository: 'http://www.squeaksource.com/JSON'].
		spec package: 'SVG-Morphic' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'].
		
		spec
			package: 'Bootstrap-Styles';
			package: 'Bootstrap-ToolBuilder' with: [spec requires: #('Bootstrap-Styles')];
			package: 'Bootstrap-Core' with: [spec requires: #('Bootstrap-Styles' 'JSON' 'SVG-Morphic')];
			package: 'Bootstrap-Widgets' with: [spec requires: #('Bootstrap-Core' 'Bootstrap-ToolBuilder')];
			package: 'Bootstrap-Examples' with: [spec requires: #('Bootstrap-Widgets')];
			package: 'Bootstrap-Tests' with: [spec requires: #('Bootstrap-Widgets')];
			package: 'Bootstrap-Styling-Tests' with: [spec requires: #('Bootstrap-Tests' 'Bootstrap-Styles')].
		
		spec
			group: 'minimal' with: #('Bootstrap-Widgets');
			group: 'default' with: #('Bootstrap-Examples');
			group: 'tests' with: #('Bootstrap-Tests' 'Bootstrap-Styling-Tests')]
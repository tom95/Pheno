initialize-release
initialize

	super initialize.
	
	self
		add: ((PHButton label: 'hover me!')
			hoverAttach: (PHPopover new add: (PHLabel text: 'hi.')));
		add: ((PHButton label: 'click me!')
			attach: (PHPopover new add: ((PHImage form: self sampleImage)
				minSize: 300 asPoint;
				scalingMode: #fixed;
				fillMode: #cover)));
		add: ((PHButton label: 'I have a tooltip')
			addTooltip: 'This is a tooltip.')
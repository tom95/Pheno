drawing
drawSelectionOn: aCanvas
	
	self styleContext withStateActiveDo: [:context |
		self
			drawSelectionFor: selectedRow
			withState: #active
			on: aCanvas]
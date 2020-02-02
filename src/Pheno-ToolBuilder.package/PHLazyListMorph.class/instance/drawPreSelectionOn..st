drawing
drawPreSelectionOn: aCanvas
	
	self 
		drawSelectionFor: preSelectedRow
		withState: #hover
		on: aCanvas
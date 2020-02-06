initialization
setFramesForLabelArea
	"an aid to converting old instances, but then I found  
	convertAlignment (jesse welton's note)"
	labelArea ifNil: [^ self].	
	labelArea
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	label hResizing: #spaceFill.
	{closeBox. menuBox. expandBox. collapseBox} do: [:box |
		box ifNotNil: [box extent: self boxExtent]].
	self updateLabelAreaFrame
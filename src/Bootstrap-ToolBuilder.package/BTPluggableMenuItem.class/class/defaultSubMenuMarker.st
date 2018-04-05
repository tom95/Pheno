as yet unclassified
defaultSubMenuMarker

	| color |
	self flag: #themingTodo. "not the best way to do this"
	
	color := BTStyleContext new
		addClass: #menuItem;
		parent: (BTStyleContext new addClass: #menu);
		color.

	^ "MenuIcons subMenuMarkerColorized: color."BTIcon iconCaret_right formForSize: self markerSize color: color
accessing
defaultSubMenuMarker

	| color |
	self flag: #themingTodo. "not the best way to do this"
	
	color := PHStyleContext new
		addClass: #menuItem;
		parent: (PHStyleContext new addClass: #menu);
		color.

	^ "MenuIcons subMenuMarkerColorized: color."PHIcon iconCaret_right formForSize: self markerSize color: color
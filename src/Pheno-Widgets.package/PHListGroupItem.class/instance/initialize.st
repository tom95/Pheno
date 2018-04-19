initialize-release
initialize
	super initialize.

	self
		addStyleClass: #listGroupItem;
		addFallbackStyles: ((PHStyle for: #listGroupItem)
			padding: 20 @ 12;
			border: 1 color: #ccc);
		align: #(fill start)
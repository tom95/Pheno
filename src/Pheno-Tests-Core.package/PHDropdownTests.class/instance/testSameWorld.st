tests
testSameWorld

	| window dropdown |
	" this test intentionally goes the extra mile to only have a reference to the window to demonstrate how to get references to all relevant widgets "
	window := PHWidget new
		withLayout;
		add: ((PHButton text: 'Open Dropdown')
			attach: (PHDropdown new addAll: {
				PHDropdownItem label: 'item a'}));
		openInWorld: world.
	
	self click: (window findWidgetOfKind: PHButton labelled:  'Open Dropdown').
	
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'item a').
	
	(self expect: [world findToplevelOfKind: PHDropdown]) to raise: NotFound
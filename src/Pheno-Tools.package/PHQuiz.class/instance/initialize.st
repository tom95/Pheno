as yet unclassified
initialize

	super initialize.

	self
		add: (PHPage row
			add: ((PHIconButton name: #iconArrow_left)
				when: #clicked send: #previousPage  to: self);
			add: ((PHIconButton name: #iconArrow_right)
				when: #clicked send: #nextPage to: self));
		add: (pageArea := PHWidget new expand: true; withLayout).

	pages := {PHLabel text: 'This Quiz is empty. Add some pages'}.
	self currentPageIndex: 1
as yet unclassified
dockingBarStyles

	(self for: #dockingBar)
		backgroundColor: #'000';
		color: #fff;
		spacing: 0.
	
	(self for: #dockingBar asStyle > BTClassSelector forAny)
		color: #inherit.
	
	(self for: #dockingBarLogo)
		icon: #iconQq.
	
	(self for: #dockingBar asStyle > #searchBar)
		backgroundColor: Color transparent;
		borderWidth: 0;
		padding: 0.25rem.
	
	(self for: #dockingBar asStyle > #(label textArea selection))
		backgroundColor: (Color white alpha: 0.4).
	
	(self for: #(dockingBarItem menuItem))
		padding: 0.2rem  @ 0.375rem.
	
	(self for: #(dockingBarItem menuItem) state: #active)
		backgroundColor: self defaultSelectedColor
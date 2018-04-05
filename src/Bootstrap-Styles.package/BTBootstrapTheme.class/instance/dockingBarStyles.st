styles
dockingBarStyles

	(self for: #dockingBar)
		backgroundColor: #fff;
		spacing: 0.
	
	(self for: #dockingBarItem)
		padding: 0.5rem.
	
	(self for: #dockingBar asStyle > #searchBar)
		borderRadius: 0.25rem;
		padding: 5;
		border: 1 color: #ccc.
	
	(self for: #dockingBar asStyle > (BTClassSelector for: #searchBar state: #active))
		borderColor: self defaultSelectedColor lighter;
		borderWidth: 1.
		
	(self for: #dockingBarLogo)
		icon: #iconCoffee.
	
	(self for: #dockingBarFullscreen)
		icon: #iconWindow_maximize.
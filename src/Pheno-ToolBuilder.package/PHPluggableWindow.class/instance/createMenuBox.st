initialization
createMenuBox
	^ (self createBox: (self createBoxForm: #windowMenuButton))
		actionSelector: #offerWindowMenu;
		setBalloonText: 'window menu' translated
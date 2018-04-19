as yet unclassified
createCollapseBox
	^ (self createBox: (self createBoxForm: #windowCollapseButton))
		actionSelector: #collapseOrExpand;
		setBalloonText: 'collapse this window' translated.

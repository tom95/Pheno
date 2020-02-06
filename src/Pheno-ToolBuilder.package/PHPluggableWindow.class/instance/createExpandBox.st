initialization
createExpandBox
	^ (self createBox: (self createBoxForm: #windowExpandButton))
		actionSelector: #expandBoxHit;
		setBalloonText: 'expand this window' translated
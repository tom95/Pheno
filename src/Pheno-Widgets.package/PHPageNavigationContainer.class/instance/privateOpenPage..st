private
privateOpenPage: aPage

	self contentContainer
		remove: openPage;
		add: aPage.
	
	openPage := aPage
actions
nextPage
	
	[(Delay forMilliseconds: 1000) wait. 
	 Project current addDeferredUIMessage: [
		self owner owner nextPage]] fork
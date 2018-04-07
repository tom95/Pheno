displaying
displayFor: aDuration onDismiss: aBlock

	[(Delay forMilliseconds: aDuration) wait. 
	 Project current addDeferredUIMessage: [
		aBlock valueWithEnoughArguments: {self}.
		self delete]] fork
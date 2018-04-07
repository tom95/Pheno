events
triggerTabSwitched: newTab oldTab: oldTab

	self triggerEvent: #tabSwitched withArguments: {newTab. oldTab}
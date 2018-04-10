accessing
makeActive: newActiveTab

	currentTab ifNotNil: [currentTab selected: false].
	newActiveTab selected: true.
	self triggerTabSwitched: newActiveTab oldTab: currentTab.
	currentTab := newActiveTab
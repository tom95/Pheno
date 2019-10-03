testing
childWidgetsDo: aBlock

	self submorphsDo: [:morph |
		morph isWidget ifTrue: [aBlock value: morph]]
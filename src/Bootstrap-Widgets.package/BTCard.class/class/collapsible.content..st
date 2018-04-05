instance creation
collapsible: aStringOrCardHeader content:  aWidget

	| content header |
	header := aStringOrCardHeader isString
		ifTrue: [BTCardHeader new add: (BTLabel text: aStringOrCardHeader)]
		ifFalse: [aStringOrCardHeader].
	content := BTCollapsible new collapsed: true; add: aWidget.
	
	header when: #clicked send: #toggleCollapsed to: content.
	
	^ self new
		add: header;
		add: content
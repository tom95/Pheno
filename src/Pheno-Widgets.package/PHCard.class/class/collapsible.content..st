instance creation
collapsible: aStringOrCardHeader content:  aWidget

	| content header |
	header := aStringOrCardHeader isString
		ifTrue: [PHCardHeader new add: (PHLabel text: aStringOrCardHeader)]
		ifFalse: [aStringOrCardHeader].
	content := PHCollapsible new collapsed: true; add: aWidget.
	
	header when: #clicked send: #toggleCollapsed to: content.
	
	^ self new
		add: header;
		add: content
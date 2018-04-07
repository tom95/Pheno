hierarchy
selectWidget: aWidget

	self currentWidget ifNotNil: [:widget | widget visible: false].
	currentWidget := aWidget.
	aWidget visible: true.
	self layoutChanged
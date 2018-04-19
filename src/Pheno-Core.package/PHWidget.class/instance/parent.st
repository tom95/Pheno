hierarchy
parent
	" returns the next PHWidget in the hierarchy, skipping any non-PHWidget subclasses "
	^self owner ifNotNilDo: #assureWidgetParent
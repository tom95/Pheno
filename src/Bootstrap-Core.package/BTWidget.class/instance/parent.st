hierarchy
parent
	" returns the next BTWidget in the hierarchy, skipping any non-BTWidget subclasses "
	^self owner ifNotNilDo: #assureWidgetParent
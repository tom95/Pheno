accessing
listItems

	^ listItems ifNil: [listItems := Array new: self getListSize]
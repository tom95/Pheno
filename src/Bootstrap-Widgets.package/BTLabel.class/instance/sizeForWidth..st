geometry
sizeForWidth: aNumber
	| size |
	self layout width: aNumber.
	size := self actualSize.
	
	self layout width: layoutWidth.
	
	^size
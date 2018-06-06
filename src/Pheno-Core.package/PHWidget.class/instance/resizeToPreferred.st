layout
resizeToPreferred
	| preferred |
	preferred := self preferredSizeForWidth: self class maximumWidth.
	self extent: preferred naturalSize
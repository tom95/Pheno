layout
resizeToPreferred
	| preferred |
	preferred := self preferredSizeForWidth: 9e8.
	self extent: preferred naturalSize
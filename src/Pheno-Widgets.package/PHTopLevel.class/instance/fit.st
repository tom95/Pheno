geometry
fit

	" fit to the window contents, don't shrink if there's expanders or we can use more space than a minimum "
	| preferred wantsExpand |
	wantsExpand := self wantsExpandIn: self vertical.
	preferred := self preferredSizeForWidth: self width.
	
	self
		fullBounds;
		extent:
			(wantsExpand first ifTrue: [self width] ifFalse: [preferred naturalSize x min: self width]) @
			(wantsExpand second ifTrue: [self height] ifFalse: [preferred naturalSize y min: self height]);
		fullBounds
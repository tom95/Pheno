simple
testTopLevelMinSize
	| child topLevel |
	child := self widget.
	topLevel := self horizontalTopLevel minSize: 100 asPoint; add: child; shrink.
	
	self assert: 100 asPoint equals: topLevel extent
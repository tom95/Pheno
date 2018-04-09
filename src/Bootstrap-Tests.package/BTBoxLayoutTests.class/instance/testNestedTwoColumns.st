nested
testNestedTwoColumns
	| child row1 row2 rows topLevel |
	" single child left, two rows next to it
	# #########
	   
	   #########"
	child := self widget minSize: 50 asPoint.
	row1 := self widget minSize: 100 asPoint; align: #(fill start).
	row2 := self widget minSize: 100 asPoint; align: #(fill start).
	rows := self verticalContainer align: #(fill start); expand: true; add: row1; add: row2.
	topLevel := self horizontalTopLevel add: child; add: rows; size: 600 @ 0; fullBounds; yourself.
	
	self
		assert: 600 @ 200 equals: topLevel extent;
		assert: 550 @ 200 equals: rows extent
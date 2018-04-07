initialize-release
insertionIndex
	" insert new tags before the text input.
	gotta pay attention when we set a new tag list, because that temporarily removes all children "

	^ self submorphCount = 0
		ifTrue: [super insertionIndex]
		ifFalse: [self submorphCount]
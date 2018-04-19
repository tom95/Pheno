layout
adjustAllocatedSize: aPoint

	(form isNil or: [aPoint x isZero or: [aPoint y isZero]]) ifTrue: [^ aPoint].
	
	^ self scalingMode == #shrink
		ifTrue: [
			(aPoint x / aPoint y) > (form width / form height)
				ifTrue: [(form width * aPoint y / form height) @ aPoint y]
				ifFalse: [aPoint x @ (form height * aPoint x / form width)]]
		ifFalse: [aPoint]
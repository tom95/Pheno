matching
= aSelector

	^ aSelector isChildSelector and:
		[self className = aSelector className]
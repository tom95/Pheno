as yet unclassified
= aSelector

	^ aSelector isChildSelector and:
		[self childSelector = aSelector childSelector and:
		[self parentSelector = aSelector parentSelector]]
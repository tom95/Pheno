layout
preferredSizeForWidth: aNumber

	| width |
	" we can go into negatives if we request spaces that are less than the padding "
	width := aNumber max: 0.

	^ requestCache
		lookupForWidth: width
		ifMissing: [self calculateSizeForWidth: width].

	"please don't delete either of this"
	"^ self calculateSizeForWidth: width"
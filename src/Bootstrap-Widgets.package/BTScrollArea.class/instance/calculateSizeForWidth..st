layout
calculateSizeForWidth: aNumber

	| preferred |
	container hasSubmorphs ifFalse: [^ BTSizeRequest fixed: 0 asPoint].

	preferred := (container firstSubmorph preferredSizeForWidth: aNumber).

	^ preferred minSize:
		(policy first == #scroll ifTrue: [self minSize x] ifFalse: [preferred minSize x]) @
		(policy second == #scroll ifTrue: [self minSize y] ifFalse: [preferred minSize y])
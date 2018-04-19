cache
lookupForWidth: aNumber ifMissing: aBlock

	^ list
		detect: [:entry | entry key rangeIncludes: aNumber]
		ifFound: #value
		ifNone: [self commitForWidth: aNumber result: aBlock value]
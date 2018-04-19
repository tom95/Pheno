cache
commitForWidth: aNumber result: aSizeRequest

	list
		detect: [:entry | entry value = aSizeRequest]
		ifFound: [:entry | entry key: ((entry key first min: aNumber) to: (entry key last max: aNumber))]
		ifNone: [list add: (aNumber to: aNumber) -> aSizeRequest].

	^ aSizeRequest
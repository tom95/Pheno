as yet unclassified
specifity

	^ self selectors inject: 0 into: [:max :selector | max max: selector specifity]
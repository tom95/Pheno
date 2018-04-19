as yet unclassified
matches: aStyleContext

	^ self selectors anySatisfy: [:selector | selector matches:  aStyleContext]
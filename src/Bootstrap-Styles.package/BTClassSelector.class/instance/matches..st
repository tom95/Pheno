matching
matches: aStyleContext

	^ (self classNames allSatisfy: [:name | aStyleContext hasClass: name]) and:
		[self state allSatisfy: [:state | aStyleContext hasState: state]]
private
current: aNumber
	" update the current page. returns a promise fulfilling when the page switch succeeded. "

	| new |
	^ ((stack at: current) first leaving
		then: [
			self application ifNotNil: [self application privateOpenPage: (stack at: aNumber) first].
			current := aNumber.
			new := stack at: current.
			new first enteringWith: new second])
		then: [ | newPage |
			newPage := (stack at: current) first.
			self triggerOpened: newPage.
			self application ifNotNil: [self application updateBreadcrumbs].
			newPage]
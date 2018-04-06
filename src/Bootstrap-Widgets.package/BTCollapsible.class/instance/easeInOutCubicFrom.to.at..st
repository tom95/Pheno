animation
easeInOutCubicFrom: a to: b at: aNumber
	| c t |
	c := b - a.
	t := aNumber * 2.0.
	t < 1.0 ifTrue: [ ^c/2.0*t*t*t + a ].
	t := t - 2.0.
	^c/2.0*(t*t*t + 2.0) + a
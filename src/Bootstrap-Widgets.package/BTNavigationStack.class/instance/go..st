navigation
go: aNumber
	" go back or forward by aNumber. Return the newly opened page. "

	| new |
	stack ifEmpty: [^ nil].
	
	new := current + aNumber clampLow: 1 high: stack size.
	^ new ~= current
		ifTrue: [self current: new]
		ifFalse: [BTPromise unit: (stack at: current) first]
helpers
all: aCollection
	" resolve when all Promises in aCollection are resolved. If any reject, the returned promise immediately rejects as well, with the error of the first rejected promise "
	
	| grouped pending result |
	pending := aCollection size.
	grouped := self new.
	result := Array new: pending.
	aCollection ifEmpty: [^ self unit: result].
	
	aCollection doWithIndex: [:promise :index |
		promise
			whenResolved: [:value |
				pending := pending - 1.
				result at: index put: value.
				pending = 0 ifTrue: [grouped resolveWith: result]];
			whenRejected: [:error | grouped rejectWith: error]].

	^ grouped
as yet unclassified
testPromiseRejectWith

	| e |
	e := PHTestApplicationException new.
	
	self should: [(self expect: (PHPromise unit: 1)) to rejectWith: 6] raise: TestFailure.
	self should: [(self expect: (PHPromise new rejectWith: e)) to not rejectWith: e] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise new rejectWith: PHTestApplicationException new)) to not rejectWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise unit: 1)) to not rejectWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise new rejectWith: e)) to rejectWith: e] raise: TestFailure
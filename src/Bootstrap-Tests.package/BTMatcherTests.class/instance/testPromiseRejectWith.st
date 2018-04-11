as yet unclassified
testPromiseRejectWith

	| e |
	e := BTTestApplicationException new.
	
	self should: [(self expect: (BTPromise unit: 1)) to rejectWith: 6] raise: TestFailure.
	self should: [(self expect: (BTPromise new rejectWith: e)) to not rejectWith: e] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise new rejectWith: BTTestApplicationException new)) to not rejectWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise unit: 1)) to not rejectWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise new rejectWith: e)) to rejectWith: e] raise: TestFailure
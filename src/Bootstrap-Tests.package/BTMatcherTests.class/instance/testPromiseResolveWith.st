as yet unclassified
testPromiseResolveWith
	self should: [(self expect: (BTPromise new rejectWith: BTHttpError new)) to resolveWith: 6] raise: TestFailure.
	self should: [(self expect: (BTPromise unit: 1)) to not resolveWith: 1] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise unit: 1)) to not resolveWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise new resolveWith: 1)) to not rejectWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise unit: 1)) to resolveWith: 1] raise: TestFailure
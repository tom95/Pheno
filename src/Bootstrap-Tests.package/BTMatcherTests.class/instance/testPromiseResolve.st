as yet unclassified
testPromiseResolve
	self should: [(self expect: (BTPromise new rejectWith: BTHttpError new)) to resolve] raise: TestFailure.
	self should: [(self expect: (BTPromise unit: 1)) to not resolve] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise new resolveWith: 1)) to not reject] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise unit: 1)) to resolve] raise: TestFailure
tests
testPromiseResolve
	self should: [(self expect: (PHPromise new rejectWith: PHTestApplicationException new)) to resolve] raise: TestFailure.
	self should: [(self expect: (PHPromise unit: 1)) to not resolve] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise new resolveWith: 1)) to not reject] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise unit: 1)) to resolve] raise: TestFailure
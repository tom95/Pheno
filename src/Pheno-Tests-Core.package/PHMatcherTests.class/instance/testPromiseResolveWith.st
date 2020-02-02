tests
testPromiseResolveWith
	self should: [(self expect: (PHPromise new rejectWith: PHTestApplicationException new)) to resolveWith: 6] raise: TestFailure.
	self should: [(self expect: (PHPromise unit: 1)) to not resolveWith: 1] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise unit: 1)) to not resolveWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise new resolveWith: 1)) to not rejectWith: 6] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise unit: 1)) to resolveWith: 1] raise: TestFailure
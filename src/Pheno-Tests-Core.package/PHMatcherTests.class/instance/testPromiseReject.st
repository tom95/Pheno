as yet unclassified
testPromiseReject
	self should: [(self expect: (PHPromise unit: 1)) to reject] raise: TestFailure.
	self should: [(self expect: (PHPromise new rejectWith: PHTestApplicationException new)) to not reject] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise unit: 1)) to not reject] raise: TestFailure.
	self shouldnt: [(self expect: (PHPromise new rejectWith: PHTestApplicationException new)) to reject] raise: TestFailure
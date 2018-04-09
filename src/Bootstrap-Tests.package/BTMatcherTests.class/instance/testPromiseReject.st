as yet unclassified
testPromiseReject
	self should: [(self expect: (BTPromise unit: 1)) to reject] raise: TestFailure.
	self should: [(self expect: (BTPromise new rejectWith: BTHttpError new)) to not reject] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise unit: 1)) to not reject] raise: TestFailure.
	self shouldnt: [(self expect: (BTPromise new rejectWith: BTHttpError new)) to reject] raise: TestFailure
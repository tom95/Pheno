monad
then: onFulfilled ifRejected: onRejected

	| promise |
	"Return a Promise that, if it resolves, runs the resolvedBlock. If resolution throws an Exception, it runs the errBlock."
	promise := self class new.
	
	self whenResolved: [:value |
		onFulfilled
			ifNotNil: [self executeBlock: onFulfilled withValue: value forPromise: promise]
			ifNil: [promise resolveWith: self value]].
	
	self whenRejected: [:error |
		onRejected
			ifNotNil: [self executeBlock: onRejected withValue: error forPromise: promise]
			ifNil: [promise rejectWith: error]].
	
	^ promise
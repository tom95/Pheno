running
safePromise: aPromise
	" make sure we get to know when this promise fails "
	^aPromise
		whenRejected: [ :error | error signal ];
		yourself
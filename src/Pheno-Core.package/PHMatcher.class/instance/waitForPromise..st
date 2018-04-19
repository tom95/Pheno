private
waitForPromise: aPromise
	" waits for `timeout` msecs for the promise to reject or resolve "
	
	| delay sema |
	sema := Semaphore new.
	aPromise whenResolved: [sema signal]; whenRejected: [sema signal].
	delay := Delay timeoutSemaphore: sema afterMSecs: self timeout.
	[sema wait] ensure: [delay unschedule]
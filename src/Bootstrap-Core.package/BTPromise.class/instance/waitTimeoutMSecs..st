waiting
waitTimeoutMSecs: msecs
	"Wait for at most the given number of milliseconds for this promise to resolve. Answer true if it is resolved, false otherwise."
	
	| sema delay |
	sema := Semaphore new.
	self whenResolved: [sema signal].
	delay := Delay timeoutSemaphore: sema afterMSecs: msecs.
	[sema wait] ensure: [delay unschedule].
	^ self isResolved.
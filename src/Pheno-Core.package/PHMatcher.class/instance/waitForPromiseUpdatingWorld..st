private
waitForPromiseUpdatingWorld: aPromise
	" waits for `timeout` msecs for the promise to reject or resolve while repeatedly updating the world state.
	  use this if your promise handling is wrapped inside a deferred UI message "
	
	| timeoutStep timeElapsed |
	timeoutStep := 20.
	timeElapsed := 0.
	
	[timeElapsed < self timeout and: [aPromise isPending]] whileTrue: [
		(Delay forMilliseconds: timeoutStep) wait.
		" look at that! we wait for other processes and then we let all the deferred UI messages run through "
		Processor yield.
		ActiveWorld doOneSubCycle]
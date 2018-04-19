waiting
waitTimeoutSeconds: seconds
	"Wait for at most the given number of seconds for this promise to resolve. Answer true if it is resolved, false otherwise."
	
	^ self waitTimeoutMSecs: seconds * 1000
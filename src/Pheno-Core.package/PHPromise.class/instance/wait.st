waiting
wait
	"Wait unconditionally for this promise to resolve."
	
	| sema |
	sema := Semaphore new.
	self whenResolved: [sema signal].
	sema wait.
	^ value
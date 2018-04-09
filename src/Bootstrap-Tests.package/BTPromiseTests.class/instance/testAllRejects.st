as yet unclassified
testAllRejects
	| a b grouped e |
	e := BTHttpError new.
	a := BTPromise new.
	b := BTPromise new.
	
	grouped := (BTPromise all: {a. b}).
	
	a rejectWith: e.
	
	(self expect: grouped isRejected) to be: true.
	(self expect: grouped error) to be: e
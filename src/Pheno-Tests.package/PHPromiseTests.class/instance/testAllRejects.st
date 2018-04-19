as yet unclassified
testAllRejects
	| a b grouped e |
	e := PHTestApplicationException new.
	a := PHPromise new.
	b := PHPromise new.
	
	grouped := (PHPromise all: {a. b}).
	
	a rejectWith: e.
	
	(self expect: grouped isRejected) to be: true.
	(self expect: grouped error) to be: e
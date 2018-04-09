as yet unclassified
testAllResolvesOnEmptyCollection
	| grouped |
	grouped := BTPromise all: {}.
	
	(self expect: grouped) to resolve
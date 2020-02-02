tests
testAllResolvesOnEmptyCollection
	| grouped |
	grouped := PHPromise all: {}.
	
	(self expect: grouped) to resolve
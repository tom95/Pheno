as yet unclassified
testMultipleSends
	| subject spy |
	subject := Object new.

	spy := BTTestSpy subject: subject event: #hi arguments: nil negated: false.
	
	4 timesRepeat: [
		subject triggerEvent: #hi ].
	
	self shouldnt: [ spy check: self ] raise: TestFailure
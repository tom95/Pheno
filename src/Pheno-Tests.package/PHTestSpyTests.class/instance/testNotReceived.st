as yet unclassified
testNotReceived
	| subject spy |
	subject := Object new.

	spy := PHTestSpy subject: subject event: #hi arguments: nil negated: false.
	
	self should: [ spy check: self ] raise: TestFailure
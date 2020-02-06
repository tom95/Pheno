tests
testReceivedNegated
	| subject spy |
	subject := Object new.

	spy := PHTestSpy subject: subject event: #hi arguments: nil negated: true.
	
	subject triggerEvent: #hi with: 1.
	
	self should: [ spy check: self ] raise: TestFailure
as yet unclassified
testReceived
	| subject spy |
	subject := Object new.

	spy := BTTestSpy subject: subject event: #hi arguments: nil negated: false.
	
	subject triggerEvent: #hi with: 1.
	
	self shouldnt: [ spy check: self ] raise: TestFailure
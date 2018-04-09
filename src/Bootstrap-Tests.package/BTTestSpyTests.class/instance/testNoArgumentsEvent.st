as yet unclassified
testNoArgumentsEvent
	| subject spy |
	subject := Object new.

	spy := BTTestSpy subject: subject event: #hi arguments: nil negated: false.
	
	subject triggerEvent: #hi.
	
	self shouldnt: [ spy check: self ] raise: TestFailure
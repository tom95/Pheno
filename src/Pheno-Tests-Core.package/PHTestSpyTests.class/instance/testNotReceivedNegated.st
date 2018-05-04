as yet unclassified
testNotReceivedNegated
	| subject spy |
	subject := Object new.
	
	spy := PHTestSpy subject: subject event: #hi arguments: nil negated: true.
	
	self shouldnt: [ spy check: self ] raise: TestFailure
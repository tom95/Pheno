tests
testIncorrectArguments
	| subject spy |
	subject := Object new.

	spy := PHTestSpy subject: subject event: #hi arguments: #(1 2) negated: false.
	
	subject triggerEvent: #hi withArguments: #(2 2).
	
	self should: [ spy check: self ] raise: TestFailure
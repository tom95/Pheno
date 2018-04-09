as yet unclassified
testCorrectArguments
	| subject spy |
	subject := Object new.

	spy := BTTestSpy subject: subject event: #hi arguments: #(1 2) negated: false.
	
	subject triggerEvent: #hi withArguments: #(1 2).
	
	self shouldnt: [ spy check: self ] raise: TestFailure
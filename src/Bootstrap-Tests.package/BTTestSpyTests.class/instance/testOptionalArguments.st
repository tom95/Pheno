as yet unclassified
testOptionalArguments
	| subject spy |
	subject := Object new.

	spy := BTTestSpy subject: subject event: #hi arguments: #(nil 1 nil) negated: false.
	
	subject triggerEvent: #hi withArguments: #(3 1 3).
	
	self shouldnt: [ spy check: self ] raise: TestFailure
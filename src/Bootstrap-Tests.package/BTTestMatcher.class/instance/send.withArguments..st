matching
send: aSymbol withArguments: aCollection

	self testCase addSpy: (BTTestSpy
		subject: self subject
		event: aSymbol
		arguments: aCollection
		negated: negated)
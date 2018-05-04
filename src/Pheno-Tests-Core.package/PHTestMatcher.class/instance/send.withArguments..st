matching
send: aSymbol withArguments: aCollection

	self testCase addSpy: (PHTestSpy
		subject: self subject
		event: aSymbol
		arguments: aCollection
		negated: negated)
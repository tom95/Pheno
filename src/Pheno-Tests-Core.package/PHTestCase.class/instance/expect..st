assertions
expect: anObject
	^PHTestMatcher new
		subject: anObject;
		testCase: self;
		yourself
as yet unclassified
testAllowFreeText
	| completion |
	completion := self completionWidget onlyAllowsExactMatches: false; text: 'My Custom Value'.
	
	(self expect: completion) to; send: #confirmed withArguments: #('My Custom Value').
	
	self
		keyStroke: completion key: Character cr;
		checkSpies
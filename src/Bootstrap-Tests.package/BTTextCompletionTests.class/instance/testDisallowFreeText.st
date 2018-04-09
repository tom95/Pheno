as yet unclassified
testDisallowFreeText
	| completion |
	completion := self completionWidget
		onlyAllowsExactMatches: true;
		text: 'My Custom Value';
		updateText.
	
	(self expect: completion) to not send: #confirmed.
	
	self
		keyStroke: completion key: Character tab;
		checkSpies
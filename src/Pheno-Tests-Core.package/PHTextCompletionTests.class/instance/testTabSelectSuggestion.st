as yet unclassified
testTabSelectSuggestion
	| completion |
	completion := self completionWidget
		text: 'Ger';
		updateText.
	
	self keyStroke: completion key: Character tab.

	(self expect: completion) to send: #confirmed withArguments: #('Germany').

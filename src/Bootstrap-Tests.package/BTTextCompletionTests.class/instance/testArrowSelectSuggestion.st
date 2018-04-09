as yet unclassified
testArrowSelectSuggestion
	| completion |
	#(true false) do: [ :onlyCompletions |
		completion := self completionWidget
		text: 'Ger';
		onlyAllowsExactMatches: onlyCompletions.
		(self expect: (completion updateText: 'Ger')) to resolve.
		
		self
			keyStroke: completion key: Character arrowDown;
			keyStroke: completion key: Character tab.
		(self expect: completion text) to equal: 'Germany']
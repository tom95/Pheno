as yet unclassified
initialize

	super initialize.
	
	self
		add: (PHTextCompletion new
			suggestionsList: {'Andorra'. 'Germany'. 'France'. 'Albania'. 'Argentina'. 'Austria'. 'Australia'. 'Andorra2'};
			onlyAllowsExactMatches: true;
			displayAllWhenEmpty: true;
			when: #confirmed evaluate: [:text :item | self topLevel displayNotification: text type: #info]);
		
		add: ((PHTextCompletion placeholder: 'enter and wait ...')
			suggestionsAsynchronusBlock: [:text | | p |
				p := PHPromise new.
				[(Delay forSeconds: 1) wait. p resolveWith: {'asd'. 'asdasdasd'}] fork.
				p])
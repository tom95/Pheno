as yet unclassified
initialize

	super initialize.
	
	self
		add: (BTTextCompletion new
			suggestionsList: {'Andorra'. 'Germany'. 'France'. 'Albania'. 'Argentina'. 'Austria'. 'Australia'. 'Andorra2'};
			onlyAllowsExactMatches: true;
			displayAllWhenEmpty: true;
			when: #confirmed evaluate: [:text :item | self topLevel displayNotification: text type: #info]);
		
		add: ((BTTextCompletion placeholder: 'enter and wait ...')
			suggestionsAsynchronusBlock: [:text | | p |
				p := BTPromise new.
				[(Delay forSeconds: 1) wait. p resolveWith: {'asd'. 'asdasdasd'}] fork.
				p])
as yet unclassified
setUp
	super setUp.

	completionWidget := BTTextCompletion new suggestionsList: {
		'Andorra'.
		'Germany'.
		'France'.
		'Albania'.
		'Argentina'.
		'Austria'.
		'Australia'}
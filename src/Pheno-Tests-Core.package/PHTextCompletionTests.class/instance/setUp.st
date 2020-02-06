running
setUp
	super setUp.

	completionWidget := PHTextCompletion new suggestionsList: {
		'Andorra'.
		'Germany'.
		'France'.
		'Albania'.
		'Argentina'.
		'Austria'.
		'Australia'}
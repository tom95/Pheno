as yet unclassified
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
as yet unclassified
initializeWithQuestion: aString answers: anArray

	| answerButtons |
	super initialize.
	
	question := aString.
	answerButtons := PHPage column.
	answerItems := anArray.
	
	answerItems do: [:a | | button |
		answerButtons add: (button := (PHButton text: a answerText)
			vertical: false;
			align: #(fill fill);
			expand: true).
		button
			when: #clicked
			send: #displayCorrectResponsesFor:on:chosenAnswer:on:
			to: self
			withArguments: {answerItems. answerButtons. a. button}].
	
	self
		add: ((PHLabel subcategoryHeader: self question) align: #(center center));
		add: answerButtons;
		withLayout;
		vertical: true
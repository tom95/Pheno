actions
displayCorrectResponsesFor: anArray on: anOtherArray chosenAnswer: anAnswer on: aButton

	anAnswer isCorrect ifFalse: [aButton addStyleClass: #danger; changed].

	anArray with: anOtherArray submorphs do:
	 [:a :b | a isCorrect ifTrue: [b addStyleClass: #success; changed ]].

	self nextPage
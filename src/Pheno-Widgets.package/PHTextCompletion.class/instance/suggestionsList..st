accessing
suggestionsList: aCollectionOfStringsOrSuggestions
	"Our suggestionsList expects it's contents to be PHTextCompletionSuggestion objects. For convenience we also allow strings as input, which we transform into PHTextCompletionSuggestions here. If an element in our input is not a valid input, we error."
	
	suggestionsList := aCollectionOfStringsOrSuggestions collect: [:suggestion | | item |
			item := suggestion isString
				ifTrue: [PHTextCompletionSuggestion label: suggestion data: suggestion]
				ifFalse: [suggestion].

			item
				when: #clicked
				send: #triggerConfirmed:suggestion:
				to: self
				withArguments: {item label text. item};
				yourself]
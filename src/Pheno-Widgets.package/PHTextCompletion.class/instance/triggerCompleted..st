events
triggerCompleted: aCompletionSuggestion

	^ self triggerEvent: #completed with: (aCompletionSuggestion ifNotNil: #data)
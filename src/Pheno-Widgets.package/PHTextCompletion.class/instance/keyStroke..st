event handling
keyStroke: anEvent

	| key |
	key := anEvent keyString.
	(key = '<tab>') ifTrue: [^ self useActiveSuggestion].
	(key = '<down>') ifTrue: [^ self moveActiveSuggestion: 1].
	(key = '<up>') ifTrue: [^ self moveActiveSuggestion: -1].
	anEvent keyCharacter = Character escape ifTrue: [^ self closeSuggestionPopup].
	
	super keyStroke: anEvent
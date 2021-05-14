event handling
keyStroke: anEvent

	| key |
	key := anEvent keyCharacter.
	key = Character tab ifTrue: [^ self useActiveSuggestion].
	key = Character arrowDown ifTrue: [^ self moveActiveSuggestion: 1].
	key = Character arrowUp ifTrue: [^ self moveActiveSuggestion: -1].
	key = Character escape ifTrue: [^ self closeSuggestionPopup].
	
	super keyStroke: anEvent
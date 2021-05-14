private
simulateKeyEvent: aSymbol key: aCharacter buttons: someButtons morph: aMorph

	| morphicEvent |
	morphicEvent := KeyboardEvent new.
	(morphicEvent respondsTo: #setType:buttons:position:keyValue:keyCode:hand:stamp:)
		ifTrue: [
			morphicEvent
				setType: aSymbol
				buttons: (self mapButtons: someButtons)
				position: aMorph center
				keyValue: aCharacter asciiValue
				keyCode: aCharacter asciiValue
				hand: hand
				stamp: 0]
		ifFalse: [
			morphicEvent
				setType: aSymbol
				buttons: (self mapButtons: someButtons)
				position: aMorph center
				keyValue: aCharacter asciiValue
				hand: hand
				stamp: 0].
	morphicEvent wasHandled: false.
	
	hand newKeyboardFocus: aMorph.
	
	aMorph processEvent: morphicEvent
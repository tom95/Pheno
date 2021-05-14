event handling
keyStroke: anEvent

	| key |
	key := anEvent keyCharacter.
	
	(key = Character arrowLeft and: [anEvent commandKeyPressed]) ifTrue: [^ self moveToNextWord: -1 selecting: false].
	(key = Character arrowLeft and: [anEvent commandKeyPressed]) ifTrue: [^ self moveToNextWord: -1 selecting: anEvent shiftPressed].
	(key = Character arrowRight and: [anEvent commandKeyPressed]) ifTrue: [^ self moveToNextWord: 1 selecting: anEvent shiftPressed].
	
	key = Character arrowLeft ifTrue: [^ self moveCursor: true direction: -1 selecting: anEvent shiftPressed].
	key = Character arrowRight ifTrue: [^ self moveCursor: true direction: 1 selecting: anEvent shiftPressed].
	key = Character arrowUp ifTrue: [^ self moveCursorVertically: -1 selecting: anEvent shiftPressed].
	key = Character arrowDown ifTrue: [^ self moveCursorVertically: 1 selecting: anEvent shiftPressed].
	(key = Character home and: [anEvent shiftPressed]) ifTrue: [
		^ self
			selectionBound: self cursor;
			cursor: 0].
	key = Character home ifTrue: [^ self placeCursorAt: 0].
	(key = Character end and: [anEvent shiftPressed]) ifTrue: [
		^ self
			selectionBound: self cursor;
			cursor: self text size].
	key = Character end ifTrue: [^ self placeCursorAt: self text size].
	
	(key = $a and: [anEvent commandKeyPressed]) ifTrue: [^ self selectAll].
	(key = $c and: [anEvent commandKeyPressed]) ifTrue: [^ Clipboard clipboardText: self selectedText].
	key = Character escape ifTrue: [^ self triggerCancelled].
	((key = Character cr and: [self multiLine not]) or: [key = $s and: [anEvent commandKeyPressed]]) ifTrue: [^ self triggerConfirmed: self text].
	key = Character tab ifTrue: [^ self pasteUpMorphHandlingTabAmongFields ifNotNilDo: [:p | p tabHitWithEvent: anEvent]].
	
	self editable ifTrue: [
		(key = Character delete and: [anEvent commandKeyPressed]) ifTrue: [
			^ self
				deleteNextWord: 1;
				triggerChanged].
		(key = Character backspace and: [anEvent commandKeyPressed]) ifTrue: [
			^ self
				deleteNextWord: -1;
				triggerChanged].
		key = Character backspace ifTrue: [
			^ self
				deleteBeforeCursor;
				triggerChanged].
		key = Character delete ifTrue: [
			^ self
				deleteAfterCursor;
				triggerChanged].
		(key = $v and: [anEvent commandKeyPressed]) ifTrue: [
			^ self
				insertAtCursor: Clipboard clipboardText;
				triggerChanged].
		(key = $x and: [anEvent commandKeyPressed]) ifTrue: [
			Clipboard clipboardText: self selectedText.
			^ self
				deleteBeforeCursor;
				triggerChanged].
		
		(anEvent controlKeyPressed or: [anEvent commandKeyPressed]) ifFalse: [
			self
				insertAtCursor: anEvent keyCharacter asString;
				placeCursorAt: self cursor + 1;
				triggerChanged]]
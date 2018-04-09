private
simulateMouseEvent: morphicEvent morph: aMorph
	morphicEvent
		wasHandled: false;
		setHand: hand.
	
	hand
		position: morphicEvent position;
		newMouseFocus: aMorph event: morphicEvent;
		handleEvent: morphicEvent
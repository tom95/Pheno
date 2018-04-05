event handling
processFocusEvent: evt using: dispatcher
	"is needed to make our floating dialog dispatch mouse events to it's children (for example to BTDropdownItems)"

	^ dispatcher dispatchFocusEventFully: evt with: self
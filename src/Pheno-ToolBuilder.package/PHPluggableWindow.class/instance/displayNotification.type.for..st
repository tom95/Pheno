widget-api
displayNotification: aString type: aColorType for: aDuration

	| newNotification |
	newNotification := (PHNotification text: aString type: aColorType)
		displayFor: aDuration
		onDismiss: [ :notification | activeNotifications remove: notification ];
		extent: 1 @ 1;
		fullBounds;
		bottomRight: self layoutBounds bottomRight - (PHWidget spacing * 3) asPoint.
	
	self addMorph: newNotification.
	
	activeNotifications
		do: [:notification | notification y: notification y + newNotification height + (PHWidget spacing / 2)];
		add: newNotification
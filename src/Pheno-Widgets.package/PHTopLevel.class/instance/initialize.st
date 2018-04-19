initialize-release
initialize

	super initialize.
	
	activeNotifications := OrderedCollection new.
	
	self
		" note: inherits vertical: true "
		layoutPolicy: PHBoxLayout new;
		align: #(start start);
		size: 600 asPoint;
		withPadding;
		beSticky
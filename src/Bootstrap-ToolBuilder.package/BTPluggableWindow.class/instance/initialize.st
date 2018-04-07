as yet unclassified
initialize

	self styleContext addClass: #window.
	
	disabled := false.
	activeNotifications := OrderedCollection new.
	
	super initialize.
	self updateStylePropertiesReal
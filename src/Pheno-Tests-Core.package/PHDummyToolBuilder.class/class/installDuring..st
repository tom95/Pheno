installing
installDuring: aBlock

	self setUp.
	self isActive: true.
	^ aBlock ensure: [
		self tearDown.
		self isActive: false]
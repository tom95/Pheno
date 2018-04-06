accessing
fillMode: aMode
	" one of #center, #cover "
	
	self flag: #todo. "should likely be extended by coverTop, coverBottom, ... and same for center or another key"
	fillMode := aMode
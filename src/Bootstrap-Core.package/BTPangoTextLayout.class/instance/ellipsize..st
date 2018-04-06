accessing
ellipsize: aMode
	" one of #none, #start, #middle, #end "
	
	ellipsize := aMode.
	self
		primLayout: self layout
		ellipsize: (#(none start middle end)
			indexOf: aMode
			ifAbsent: [ self error: 'invalid mode' ]) - 1
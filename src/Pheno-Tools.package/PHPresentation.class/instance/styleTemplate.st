accessing
styleTemplate

	^ '"See PHStyle for a full list of properties"
PHStyleProvider new
	add: ((PHStyle for: #slide)
		backgroundColor: Color white);
	
	add: ((PHStyle for: #h1)
		fontSize: 30;
		fontWeight: ''bold'')'
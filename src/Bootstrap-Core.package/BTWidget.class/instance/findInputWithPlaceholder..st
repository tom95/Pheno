test-helper
findInputWithPlaceholder: aString
	" returns the first form input that has a placeholder of aString "
	
	^ self formInputs
		detect: [:input | input placeholder = aString]
		ifNone: [(NotFound object: aString) signal]
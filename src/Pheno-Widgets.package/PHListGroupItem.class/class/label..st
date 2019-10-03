initialize-release
label: aString

	^ self new
		add: ((PHLabel text: aString) wrap: #never)
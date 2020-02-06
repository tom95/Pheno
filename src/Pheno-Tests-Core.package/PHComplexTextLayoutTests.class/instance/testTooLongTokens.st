tests
testTooLongTokens

	| layout string answers |
	layout := PHComplexTextLayout new.
	
	string := String new: 7 withAll: $a.
	
	answers := Array streamContents: [:stream |
		layout tokensOfString: string from: 1 to: string size do: [:from :to | | length |
			stream nextPut: (from to: to).
			length := to - from + 1.
			length = 7 ifTrue: [length - 5] ifFalse: [0]]].
	
	(self expect: answers) to containExactly: {1 to: 7. 6 to: 7}
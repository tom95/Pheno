as yet unclassified
printOn: aStream

	self selectors
		do: [:selector | selector printOn: aStream]
		separatedBy: [aStream nextPutAll: ', ']
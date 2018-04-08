accessing
printOn: aStream

	self classNames
		do: [:name | aStream nextPut: $#; nextPutAll: name asString].
	
	self state ifNotEmpty: [
		aStream nextPut: $/.
		self state do: [:name | aStream nextPut: $#; nextPutAll: name asString].]
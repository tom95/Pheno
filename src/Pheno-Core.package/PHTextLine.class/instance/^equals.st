as yet unclassified
= anotherLine

	(self origin = anotherLine origin and: [self corner = anotherLine corner]) ifFalse: [^ false].
	anotherLine isRectangle ifTrue: [^ true].
	
	^ self start = anotherLine start and: [self stop = anotherLine stop and: [self layout ==anotherLine layout]]
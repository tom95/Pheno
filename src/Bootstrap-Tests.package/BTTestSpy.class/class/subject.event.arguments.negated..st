as yet unclassified
subject: anObject event: aSymbol arguments: aCollection negated: aBoolean
	| class |
	class := self new
		event: aSymbol;
		arguments: aCollection;
		negated: aBoolean;
		yourself.
	
	anObject when: aSymbol send: #a:b:c:d:e:f:g:h: to: class.
	
	^class
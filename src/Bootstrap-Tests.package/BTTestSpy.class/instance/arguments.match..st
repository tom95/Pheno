as yet unclassified
arguments: expected match: actual
	actual size < expected size ifTrue: [ ^false ].
	
	expected with: (actual first: expected size) do: [ :ex :ac |
		(ex isNil or: [ex = ac]) ifFalse: [^false]].

	^true
private
parseColor: aString
	" html compliant parsing, allowing #321 and alpha channels #33333399 "
	
	(aString first = $# and: [aString size = 4]) ifTrue: [
		^ Color fromString: ('#{1}{1}{2}{2}{3}{3}' format: {aString second. aString third. aString fourth}) ].
	(aString first = $# and: [aString size = 9]) ifTrue: [
		^ (Color fromString: (aString allButLast: 2)) alpha: (Integer readFrom: (aString last: 2) base: 16) / 256 ].
	
	^ Color fromString: aString
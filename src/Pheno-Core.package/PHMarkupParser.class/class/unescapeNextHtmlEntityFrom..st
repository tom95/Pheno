private
unescapeNextHtmlEntityFrom: aStream

	| entity |
	aStream next. "&"
	entity := aStream upTo: $;.
	
	^ entity first = $#
		ifTrue: [
			entity second = $x
				ifTrue: [Character value: (Integer readFrom: (entity allButFirst: 2) base: 16)]
				ifFalse: [Character value: entity asInteger]]
		ifFalse: [String htmlEntities at: entity ifAbsent: [Character space]]
as yet unclassified
fromFileStream: aStream
	"Open an SVGMorph from the given stream."

	|sx doc|
	sx := aStream.
	(aStream name endsWith: 'svgz')
		ifTrue: [aStream binary.
				sx := (GZipReadStream on: aStream contentsOfEntireFile) upToEnd asString readStream].
	doc :=(XMLDOMParser parseDocumentFrom: sx).
	^self new createFromSVGDocument: doc
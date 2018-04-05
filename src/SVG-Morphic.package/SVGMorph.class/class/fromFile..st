as yet unclassified
fromFile: filename
	"Open an SVGMorph from the given file."

	| s answer|
	s := FileStream oldFileNamed: filename.
	s ifNil: [^nil].
	[answer _ self fromFileStream: s]
		ensure: [s close].
	^answer
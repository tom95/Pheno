accessing
alignment: aSymbol

	alignment := aSymbol.
	
	"justify is a special case in Pango, so it needs to use a different function"
	self primLayout: self layout justify: aSymbol == #justify.
	
	self primLayout: self layout alignment: (aSymbol caseOf: {
		[#justify] -> [0].
		[#left] -> [0].
		[#center] -> [1].
		[#right] -> [2]})
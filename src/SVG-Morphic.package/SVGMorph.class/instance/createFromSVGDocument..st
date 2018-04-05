accessing
createFromSVGDocument: aDocument
	"Create the receiver from the given xml document"

	|svg|
	svg := (aDocument firstTagNamed: #svg) ifNil: [self error: 'Missing svg element'].
	self createFromSVG: svg
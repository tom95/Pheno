as yet unclassified
createFromSVG: anElement
	"Create the receiver's state from the svg group."

	super createFromSVG: anElement.
	self processSVGElements: anElement
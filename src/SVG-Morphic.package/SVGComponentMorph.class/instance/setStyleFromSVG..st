as yet unclassified
setStyleFromSVG: anElement
	"Set the dictionary of the style parameters from the element."

	self style
		addAll:  (self renderer styleIn: self fromSVGStyle: (self styleFromSVG: anElement))
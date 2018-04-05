helper
numberToRectangle: aValue

	aValue isRectangle ifTrue: [^ aValue].
	
	aValue == #inherit ifTrue: [^ aValue].

	aValue isNumber ifTrue: [
		^ Rectangle left: aValue right: aValue top: aValue bottom: aValue].
	
	aValue isPoint ifTrue: [
		^ Rectangle left: aValue x right: aValue x top: aValue y bottom: aValue y].

	aValue isCollection ifTrue: [
		aValue size = 1 ifTrue: [
			^ Rectangle left: aValue first right: aValue first top: aValue first bottom: aValue first].
		aValue size = 2 ifTrue: [
			^ Rectangle left: aValue first right: aValue first top: aValue second bottom: aValue second].
		aValue size = 4 ifTrue: [
			" ordering as in CSS: top, right, bottom, left "
			^ Rectangle left: aValue fourth right: aValue second top: aValue first bottom: aValue third].
		self error: 'invalid number of elements'].
	
	self error: 'invalid type'
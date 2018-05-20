styling
findAttribute: anAttribute from: aNumber to: anotherNumber ifPresent: aBlock ifAbsent: anotherBlock

	aNumber to: anotherNumber do: [:index |
		self text attributesAt: index do: [:attr |
			attr = anAttribute ifTrue: [
				^ aBlock value: anAttribute]]].
	
	^ anotherBlock value
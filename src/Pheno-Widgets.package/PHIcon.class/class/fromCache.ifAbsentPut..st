caching
fromCache: aNameString ifAbsentPut: aBlock

	| cache |
	cache := SVGCache ifNil: [SVGCache := Dictionary new].
	
	^ self new svg: (cache at: aNameString ifAbsentPut: [
		PHTransparentSVGMorph new
			createFromSVGDocument: (XMLDOMParser parseDocumentFrom: aBlock value readStream);
			color: Color transparent;
			yourself])
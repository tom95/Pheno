as yet unclassified
withDefaults
	"Answer a new instance of the receiver with the default values."

	^self new
		at: 'opacity' put: 1.0;
		at: 'fill' put: Color black;
		at: 'fill-opacity' put: 1.0;
		at: 'fill-rule' put: #nonzero;
		at: 'stroke' put: Color transparent;
		at: 'stroke-opacity' put: 1.0;
		at: 'stroke-width' put: 1.0;
		at: 'stroke-linecap' put: #square;
		at: 'font-family' put: nil;
		at: 'font-size' put: 12;
		at: 'text-anchor' put: #start;
		at: 'display' put: #inline;
		at: 'visibility' put: #visible;
		yourself
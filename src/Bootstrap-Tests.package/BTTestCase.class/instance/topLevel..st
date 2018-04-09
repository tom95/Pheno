widgets
topLevel: aBooleanVertical
	| toplevel |
	toplevel := BTTopLevel new
		extent: 600 asPoint;
		vertical: aBooleanVertical;
		padding: 0;
		spacing: 0;
		yourself.
	
	toplevel addUserStyles: (BTStyle forAny padding: 0; spacing: 0).
	
	^ toplevel
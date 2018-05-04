widgets
topLevel: aBooleanVertical
	| toplevel |
	toplevel := PHTopLevel new
		extent: 600 asPoint;
		vertical: aBooleanVertical;
		padding: 0;
		spacing: 0;
		yourself.
	
	toplevel addUserStyles: (PHStyle forAny padding: 0; spacing: 0).
	
	^ toplevel
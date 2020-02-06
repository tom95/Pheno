tests
testUpdateWidgetAttributes

	| padding widget style |
	widget := PHWidget new.
	padding := Rectangle left: 7 right: 3 top: 2 bottom: 8.
	style := PHStyle forAny padding: padding.
	widget addFallbackStyles: style.
	
	(self expect: widget layoutInset) to equal: padding.
	
	style padding: 5.
	(self expect: widget layoutInset) to equal: (Rectangle left: 5 right: 5 top: 5 bottom: 5)
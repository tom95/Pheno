as yet unclassified
testRemoveProvider

	| padding widget provider |
	widget := BTWidget new.
	padding := Rectangle left: 7 right: 3 top: 2 bottom: 8.
	provider := (BTStyle forAny padding: padding) asProvider.
	widget addFallbackStyles: provider.
	
	(self expect: widget layoutInset) to equal: padding.
	
	widget removeStyleProvider: provider.
	
	(self expect: widget layoutInset) to equal: (Rectangle left: 0 right: 0 top: 0 bottom: 0)
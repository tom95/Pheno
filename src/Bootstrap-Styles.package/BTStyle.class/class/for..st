instance creation
for: aSelector
	" pass in a selector or #className or #(className1 className2) "

	^ self basicNew
		initialize;
		selector: ((aSelector isSymbol or: [aSelector isArray])
			ifTrue: [BTClassSelector for: aSelector]
			ifFalse: [aSelector]);
		yourself
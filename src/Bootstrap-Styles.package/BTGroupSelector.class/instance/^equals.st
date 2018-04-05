as yet unclassified
= aSelector

	^ aSelector isGroupSelector and:
	[self selectors with: aSelector selectors do: [:s1 :s2 | s1 = s2 ifFalse: [^ false]]. true]
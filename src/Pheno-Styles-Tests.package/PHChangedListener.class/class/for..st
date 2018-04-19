as yet unclassified
for: anObject

	| me |
	me := self new.
	anObject addDependent: me.
	^ me
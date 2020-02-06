instance creation
for: anObject

	| me |
	me := self new.
	anObject addDependent: me.
	^ me
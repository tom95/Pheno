as yet unclassified
withParent: anObject
	"Answer a new instance of the receiver with the given parent."

	anObject ifNil: [^self withDefaults].
	^self new
		parents: (OrderedCollection with: anObject)
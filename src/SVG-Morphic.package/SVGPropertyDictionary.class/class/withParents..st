as yet unclassified
withParents: aCollection
	"Answer a new instance of the receiver with the given parents."

	aCollection isEmpty ifTrue: [^self withDefaults].
	^self new
		parents: aCollection asOrderedCollection copy
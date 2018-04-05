as yet unclassified
propertyAt: key
	"Answer the inherited property value for the given key"

	^self findFirstBreadthwise: [:o | o parents] suchThat: [:p | p includesKey: key]
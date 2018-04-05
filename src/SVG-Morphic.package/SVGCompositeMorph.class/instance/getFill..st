as yet unclassified
getFill: name
	"Get the fill with the given name."

	^self fills at: name ifAbsent: [self context getFill: name]
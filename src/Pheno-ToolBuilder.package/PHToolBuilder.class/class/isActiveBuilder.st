preferences
isActiveBuilder
	"Answer whether I am the currently active builder"
	^ super isActiveBuilder and: [self wantsToBeDefaultMorphicToolbuilder]
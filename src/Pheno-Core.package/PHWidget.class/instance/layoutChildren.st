layout
layoutChildren
	^self submorphs select: [ :child | child isWidget and: [child visible and: [child ignoreLayout not]]]
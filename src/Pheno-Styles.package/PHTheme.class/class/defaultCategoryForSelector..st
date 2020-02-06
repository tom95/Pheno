organization
defaultCategoryForSelector: aSelector

	^ aSelector findFeatures last
		caseOf: {
			[#styles] -> [#styles].
			[#color] -> [#colors]. }
		otherwise: [super defaultCategoryForSelector: aSelector]
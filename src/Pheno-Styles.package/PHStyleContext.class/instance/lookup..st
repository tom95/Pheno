styles
lookup: aSymbol

	^ self propertyCache at: ((aSymbol hash bitXor: states hash) bitXor: classes hash) ifAbsentPut: [
		(self lookupPriority: aSymbol for: self reportCandidatesTo: [:x :y]) first]
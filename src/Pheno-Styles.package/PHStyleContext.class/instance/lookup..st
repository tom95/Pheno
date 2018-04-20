styles
lookup: aSymbol

	^ (self lookupPriority: aSymbol for: self reportCandidatesTo: [:x :y]) first
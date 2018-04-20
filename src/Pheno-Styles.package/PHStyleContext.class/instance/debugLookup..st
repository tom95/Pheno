styles
debugLookup: aSymbol

	^ Array streamContents: [:stream | self lookupPriority: aSymbol for: self reportCandidatesTo: [:candidate :candidatePriority | stream nextPut: {candidate. candidatePriority}]]
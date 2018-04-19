*Pheno-Core
withStartStopAndValueFrom: start to: stop do: aBlock

	| runStartIndex runStopIndex currentRunIndex firstRunOffset |
	runStartIndex := start.
	currentRunIndex := 0.
	firstRunOffset := 0.
	self at: start setRunOffsetAndValue: [:run :offset :value |
		currentRunIndex := run.
		firstRunOffset := offset + 1].
	
	[
		runStopIndex := runStartIndex + (runs at: currentRunIndex) - firstRunOffset min: stop.
		firstRunOffset := 0.
		aBlock value: runStartIndex value: runStopIndex value: (values at: currentRunIndex).
		
		runStartIndex := runStopIndex + 1.
		currentRunIndex := currentRunIndex + 1
	] doWhileTrue: [runStartIndex < stop].
	
	self flag: #performance "could now move the cached state up so that iterating over lines gets super fast"
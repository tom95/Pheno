updating
updateUtilityStyles

	Utilities ifNotNilDo: [:oldStyles | self global removeProvider: oldStyles].
	Utilities := PHUtilityStyles new.
	self global addProvider: Utilities priority: PHStyleContext priorityApplication
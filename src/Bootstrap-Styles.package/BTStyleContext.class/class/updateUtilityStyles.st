as yet unclassified
updateUtilityStyles

	Utilities ifNotNilDo: [:oldStyles | self global removeProvider: oldStyles].
	Utilities := BTUtilityStyles new.
	self global addProvider: Utilities priority: BTStyleContext priorityApplication
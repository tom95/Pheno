initialize-release
initialize

	super initialize.
	
	providers := SortedCollection sortBlock: [:a :b | a second > b second].
	classes := OrderedCollection new.
	parent := self class global.
	
	self flag: #workaround. "the addedMorph: extension in Morph will be triggered from the package load progressbar when installing this package. Apparently the BTStyleContext here will be instantiated before the class initialize is run, which leads to MAX_STATES being nil and the creation of the BitSet failing"
	MAX_STATES ifNil: [self class initialize].
	
	states := Bitset new: MAX_STATES
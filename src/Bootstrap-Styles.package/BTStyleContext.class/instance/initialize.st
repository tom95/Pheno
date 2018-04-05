initialize-release
initialize

	super initialize.
	
	providers := SortedCollection sortBlock: [:a :b | a second > b second].
	classes := OrderedCollection new.
	parent := self class global.
	states := Bitset new: MAX_STATES
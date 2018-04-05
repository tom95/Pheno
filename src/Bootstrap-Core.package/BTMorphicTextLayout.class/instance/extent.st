accessing
extent
	| extent |
	extent := self paragraph extent.
	
	" make sure we never allocate more size than we actually get "
	^ self width >= 0
		ifTrue: [(extent x min: self width) @ extent y]
		ifFalse: [extent]
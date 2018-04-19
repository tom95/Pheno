cursor
moveCursor: strong index: index trailing: trailing direction: direction
	" move the strong or weak cursor based on graphemes.
	  index denotes the actual index into the graphemes, trailing denotes an
	  an index that is added to the first for combined glpyhs.
	  returns new index and trailing values "
	
	^ self
		primLayout: self layout
		moveCursor: strong
		index: index
		trailing: trailing
		direction: direction
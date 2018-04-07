accessing
tags: aCollectionOfStrings

	tags := OrderedCollection new.
	self removeAllMorphs.
	
	aCollectionOfStrings do: [:tag | self addTag: tag]
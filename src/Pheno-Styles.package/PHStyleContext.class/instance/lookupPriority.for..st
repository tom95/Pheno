styles
lookupPriority: aSymbol for: aTargetContext

	| usedPriority usedValue |
	usedPriority := 0.
	usedValue := nil.
	providers do: [:providerAndPriority | | provider priority |
		provider := providerAndPriority first.
		priority := providerAndPriority second.
		
		provider lookup: aSymbol matching: aTargetContext do: [:value :valuePriority |
			(priority + valuePriority) > usedPriority ifTrue: [
				usedPriority := priority + valuePriority.
				usedValue := value]]].
	
	self validParentDo: [:parent | | valueAndPriority |
		valueAndPriority := parent lookupPriority: aSymbol for: aTargetContext.
		valueAndPriority second > usedPriority ifTrue: [
			usedValue := valueAndPriority first.
			usedPriority := valueAndPriority second]].
	
	(usedValue == #inherit and: [self == aTargetContext]) ifTrue: [
		self validParentDo: [:parent |
			" usedPriority does not change since the #inherit caused this lookup "
			usedValue := (parent lookupPriority: aSymbol for: parent) first]].
	
	" if we didn't find anything, reset "
	(usedValue == #inherit and: [self == aTargetContext]) ifTrue: [
		usedValue := nil.
		usedPriority := 0].
	
	^ {usedValue. usedPriority}
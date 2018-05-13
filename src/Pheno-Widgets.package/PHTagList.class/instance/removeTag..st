hierarchy
removeTag: aString

	self submorphs do: [:tag |
		tag text = aString ifTrue: [
			self remove: tag.
			self tags remove: aString.
			self triggerTagRemoved: aString]]
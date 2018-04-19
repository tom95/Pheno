as yet unclassified
displayedSuggestions

	^ completionWidget suggestionsDropdown submorphs
		collect: [:dropdownItem | dropdownItem plainText]
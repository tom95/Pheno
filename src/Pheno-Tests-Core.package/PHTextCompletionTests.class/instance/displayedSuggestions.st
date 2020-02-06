accessing
displayedSuggestions

	^ completionWidget suggestionsDropdown submorphs
		collect: [:dropdownItem | dropdownItem plainText]
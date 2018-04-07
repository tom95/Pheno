text
updatePreviewTextFor: aString
	" if we selected a suggestion, display that one. otherwise try completing one "

	self internalText:
		(self activeSuggestionDo: #plainText ifNone: [
			self
				completableSuggestionFor: aString
				do: [:item | aString, '<span color="#ccc">', (item plainText allButFirst: aString size) escapeEntities, '</span>']
				ifNone: [aString escapeEntities]]).

	self changed
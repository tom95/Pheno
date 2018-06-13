text
updatePreviewTextFor: aString
	" if we selected a suggestion, display that one. otherwise try completing one "

	self internalText:
		(self activeSuggestionDo: #plainText ifNone: [
			self
				completableSuggestionFor: aString
				do: [:item | aString asText, ((item plainText allButFirst: aString size) asText addAttribute: (TextColor color: (self styleContext color alpha: 0.6)))]
				ifNone: [aString]]).

	self changed
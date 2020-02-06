matching
matchRegex

	(self submorphs allButFirst: 2) do: [:row |
		([row firstSubmorph text matchesRegex: regex text] on: Error do: [:e | e return: false])
			ifTrue: [row submorphs second visible: true; removeAllMorphs; addStyleClass: #success; removeStyleClass: #danger; add: PHIcon iconCheck]
			ifFalse: [row submorphs second visible: true; removeAllMorphs; addStyleClass: #danger; removeStyleClass: #success; add: PHIcon iconRemove]]
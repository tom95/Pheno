toolbar commands
editStyles

	| window |
	window := UIManager default
		edit: self styleTemplate
		label: 'edit presentation styles'
		accept: [:text | self applyPresentationStyles: text model: window model codeTextMorph textMorph editor].
	window model toggleStyling
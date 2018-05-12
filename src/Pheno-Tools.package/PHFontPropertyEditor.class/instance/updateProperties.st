as yet unclassified
updateProperties

	| size |
	boldButton active: (self target style: 'weight') = 'bold'.
	italicButton active: (self target style: 'style') = 'italic'.
	
	size := self target style: 'size'.
	fontSizeDropdown submorphs do: [:d | d active: d label = size]
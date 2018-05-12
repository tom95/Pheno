as yet unclassified
initialize

	super initialize.
	
	self
		add: (PHButtonGroup new
			add: (boldButton := (PHButton icon: #iconBold)
				when: #clicked send: #toggleBold to: self));
			add: (italicButton := (PHButton icon: #iconItalic)
				when: #clicked send: #toggleItalic to: self);
			add: ((PHButton icon: #iconText_height)
				attach: (fontSizeDropdown := PHDropdown new
					addAll: (self fontSizes collect: [:size |
						(PHDropdownItem label: size) when: #clicked evaluate: [self setFontSize: size]])))
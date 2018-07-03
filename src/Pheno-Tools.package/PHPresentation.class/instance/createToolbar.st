as yet unclassified
createToolbar

	^ PHPage row
			
			add: ((PHButton icon: #iconPlus)
				when: #clicked send: #addSlide to: self);
			
			add: (PHButtonGroup new
				
				add: ((PHButton icon: #iconArrow_left)
					when: #clicked send: #showPreviousSlide to: self);
				
				add: ((PHButton icon: #iconArrow_right)
					when: #clicked send: #showNextSlide to: self));
			
			add: self createPageCounter;
			
			add: ((PHButton icon: #iconImage)
				when: #clicked send: #addImage to: self);
			
			add: ((PHButton icon: #iconParagraph)
				when: #clicked send: #addText to: self);
			
			add: ((PHButton icon: #iconEyedropper)
				when: #clicked send: #editStyles to: self);
			
			add: PHWidget spacer;
			
			add: ((PHButton icon: #iconSave)
				when: #clicked send: #savePresentation to: self);
				
			add: ((PHButton icon: #iconFolder_open)
				when: #clicked send: #openPresentation to: self);
				
			add: ((PHButton icon: #iconDesktop)
				when: #clicked send: #enterPresentationMode to: self)
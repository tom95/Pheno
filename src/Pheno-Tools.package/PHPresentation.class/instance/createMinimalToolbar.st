as yet unclassified
createMinimalToolbar

	^ PHPage row
			
			add: (PHButtonGroup new
				
				add: ((PHButton icon: #iconArrow_left)
					when: #clicked send: #showPreviousSlide to: self);
				
				add: ((PHButton icon: #iconArrow_right)
					when: #clicked send: #showNextSlide to: self));
			
			add: PHWidget spacer;
			
			add: ((PHButton icon: #iconSave)
				when: #clicked send: #savePresentation to: self);
				
			add: ((PHButton icon: #iconFolder_open)
				when: #clicked send: #openPresentation to: self)
as yet unclassified
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		add: (toolbar := PHPage row
			
			add: ((PHButton icon: #iconPlus)
				when: #clicked send: #addSlide to: self);
			
			add: (PHButtonGroup new
				
				add: ((PHButton icon: #iconArrow_left)
					when: #clicked send: #showPreviousSlide to: self);
				
				add: ((PHButton icon: #iconArrow_right)
					when: #clicked send: #showNextSlide to: self));
					
			add: (pageCounter := PHLabel new
				align: #(center center));
				
			add: ((PHButton icon: #iconImage)
				when: #clicked send: #addImage to: self);
			
			add: ((PHButton icon: #iconParagraph)
				when: #clicked send: #addText to: self);
			
			add: PHWidget spacer;
			
			add: ((PHButton icon: #iconSave)
				when: #clicked send: #savePresentation to: self);
				
			add: ((PHButton icon: #iconFolder_open)
				when: #clicked send: #openPresentation to: self));
			
			add: (slides := PHStackedContainer new
				expand: true);
				
			addSlide
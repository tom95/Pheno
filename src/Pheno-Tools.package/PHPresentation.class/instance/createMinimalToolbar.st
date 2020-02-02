initialize-release
createMinimalToolbar

	^ PHPage row
			
			add: (PHButtonGroup new
				
				add: ((PHButton icon: #iconArrow_left)
					when: #clicked send: #showPreviousSlide to: self);
				
				add: ((PHButton icon: #iconArrow_right)
					when: #clicked send: #showNextSlide to: self));
			
			add: self createPageCounter;
			
			add: PHWidget spacer;
			
			add: ((PHButton icon: #iconCompress)
				when: #clicked send: #leavePresentationMode to: self)
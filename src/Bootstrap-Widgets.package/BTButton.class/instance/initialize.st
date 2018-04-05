initialize-release
initialize

	super initialize.
	
	self
		addStyleClasses: #(button btButton);
		addFallbackStyles: (BTStyleProvider new
			add: ((BTStyle for: #button)
				backgroundColor: #ccc;
				color: #'000';
				padding: 16 @ 8;
				border: 1 color: #'000');
			add: ((BTStyle for: #button state: #hover) backgroundColor: #aaa);
			add: ((BTStyle for: #button state: #(active hover)) backgroundColor: #'999'));
		align: #(start start)
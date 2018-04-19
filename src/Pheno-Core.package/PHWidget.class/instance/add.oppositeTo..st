hierarchy
add: aWidget oppositeTo: anotherWidget
	" adds both widgets to me and adds an expanding invisible widget in the middle "

	self
		addMorphBack: aWidget;
		addMorphBack: PHWidget spacer;
		addMorphBack: anotherWidget
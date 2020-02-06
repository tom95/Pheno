presenting
openPresentation

	| newSlides stream |
	stream := FileChooser new
		initializeAsSystemWindowWithCaptionPane;
		setCaption: 'Select a previously saved presentation morph';
		setSuffixes: {'morph'};
		open.
	
	stream ifNil: [^ self].
	
	newSlides := (MultiByteBinaryOrTextStream with: (stream binary contentsOfEntireFile)) binary reset fileInObjectAndCode.
	(newSlides isKindOf: PHStackedContainer) ifFalse: [self error: 'morph appears to be of incorrect format!'].
	
	self replaceSubmorph: slides by: newSlides.
	slides := newSlides.
	self updateCounter
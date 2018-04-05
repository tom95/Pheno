as yet unclassified
addTitle: aString icon: aForm updatingSelector: aSelector updateTarget: aTarget 
	"Add a title line at the top of this menu Make aString its initial contents. If aSelector is not nil, then periodically obtain fresh values for its contents by sending aSelector to aTarget."
	
	| container fontToUse colorToUse labelArea |
	
	container := AlignmentMorph newRow.
	self setTitleParametersFor: container.
	
	aForm ifNotNil: [:form | container addMorphBack: form asMorph].

	fontToUse := self userInterfaceTheme titleFont ifNil: [TextStyle defaultFont].
	colorToUse := self styleContext color.
	
	"Build the label."
	aSelector
		ifNil: [
			labelArea := AlignmentMorph newColumn
				color: Color transparent;
				vResizing: #shrinkWrap;
				wrapCentering: #center;
				cellPositioning: #topCenter.
			aString asString linesDo: [:line | labelArea 
					addMorphBack: ((StringMorph contents: line 
										font: fontToUse)
										color: colorToUse;
										yourself)]]
		ifNotNil: [
			labelArea := UpdatingStringMorph on: aTarget selector: aSelector.
			labelArea font: fontToUse.
			labelArea color: colorToUse.
			labelArea useStringFormat.
			labelArea lock].
		
	container addMorphBack: labelArea.
	labelArea layoutInset: (BTStyleContext new
		addClass: #menuTitle;
		parent: self styleContext) padding withScalingFactor.
	""
	container setProperty: #titleString toValue: aString.
	self addMorphFront: container.
	""
	(self hasProperty: #needsTitlebarWidgets)
		ifTrue: [self addStayUpIcons]
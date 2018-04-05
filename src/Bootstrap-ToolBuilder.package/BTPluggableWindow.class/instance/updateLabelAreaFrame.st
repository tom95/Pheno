as yet unclassified
updateLabelAreaFrame

	| frame |
	frame := LayoutFrame new.
	frame leftFraction: 0;
		topFraction: 0;
		rightFraction: 1;
		bottomFraction: 0;
		topOffset: self labelHeight negated.
	labelArea layoutFrame: frame
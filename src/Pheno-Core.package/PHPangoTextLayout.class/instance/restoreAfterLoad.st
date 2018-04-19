initialize-release
restoreAfterLoad

	layout := 0.
	font ifNotNil: [self font: font].
	height ifNotNil: [self height: height].	
	width ifNotNil: [self width: width].
	text ifNotNil: [self text: text].
	ellipsize ifNotNil: [self ellipsize: ellipsize].
	wrap ifNotNil: [self wrap: wrap].
	lineSpacing ifNotNil: [self lineSpacing: lineSpacing].
	alignment ifNotNil: [self alignment: alignment]
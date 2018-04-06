accessing
openCopyInDialogLabelled: aString

	^ (BTDialog title: aString)
		add: (self copy
			align: #(center center);
			expand: true;
			framed: false;
			scalingMode: #shrink);
		extent: (form extent min: 600 asPoint);
		openCentered
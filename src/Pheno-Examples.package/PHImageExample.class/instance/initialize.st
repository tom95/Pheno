as yet unclassified
initialize

	super initialize.
	
	self
		add: (PHImage new
			scalingMode: #fixed;
			minSize: 200 asPoint;
			form: self sampleImage);
		add: (PHImage new
			scalingMode: #fixed;
			fillMode: #cover;
			minSize: 200 asPoint;
			form: self sampleImage);
		add: (PHImage new
			scalingMode: #shrink;
			minSize: 100 asPoint;
			form: self sampleImage)
instance creation
openFor: aMorph

	^ self new
		target: aMorph;
		openInWindowLabeled: 'CSS Properties of ', aMorph printString
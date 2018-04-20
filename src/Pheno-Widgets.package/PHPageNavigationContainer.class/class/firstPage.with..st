instance creation
firstPage: aPage with: anObject

	^ self basicNew
		initializeWithPage: aPage with: anObject;
		yourself
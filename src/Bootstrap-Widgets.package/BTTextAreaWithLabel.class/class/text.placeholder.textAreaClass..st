instance creation
text: aString placeholder: anotherString textAreaClass: aClass

	^ self basicNew
		textAreaClass: aClass;
		initialize;
		placeholder: anotherString;
		text: aString;
		yourself
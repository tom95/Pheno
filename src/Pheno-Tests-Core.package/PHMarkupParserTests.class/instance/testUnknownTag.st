tests
testUnknownTag
	
	(self expect: (PHMarkupParser markupToText: '<unknown>abc</unknown>')) to equal: 'abc'.
	(self expect: (PHMarkupParser markupToText: 'a<br>c')) to equal: 'ac'.
	(self expect: (PHMarkupParser markupToText: 'ab<br/>c')) to equal: 'abc'
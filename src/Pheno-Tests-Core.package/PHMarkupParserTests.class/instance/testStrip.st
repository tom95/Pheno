tests
testStrip
	(self expect: (PHMarkupParser strip: '<span>Abc</span> def<span>a<i>b</i></span> def')) to equal: 'Abc defab def'
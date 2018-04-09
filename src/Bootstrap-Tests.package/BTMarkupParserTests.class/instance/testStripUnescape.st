as yet unclassified
testStripUnescape
	(self expect: (BTMarkupParser strip: 'Abc <i>&lt;&gt;</i> &quot; &quot; &#xe4;&#228;&auml;')) to equal: 'Abc <> " " äää'
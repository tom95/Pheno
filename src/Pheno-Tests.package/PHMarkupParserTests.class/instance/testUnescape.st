as yet unclassified
testUnescape
	(self expect: (PHMarkupParser unescape: 'Abc &lt;&gt; &quot; &quot; &#xe4;&#228;&auml;')) to equal: 'Abc <> " " äää'
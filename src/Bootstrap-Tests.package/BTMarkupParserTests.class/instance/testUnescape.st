as yet unclassified
testUnescape
	(self expect: (BTMarkupParser unescape: 'Abc &lt;&gt; &quot; &quot; &#xe4;&#228;&auml;')) to equal: 'Abc <> " " äää'
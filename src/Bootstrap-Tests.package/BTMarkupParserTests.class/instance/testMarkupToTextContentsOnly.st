as yet unclassified
testMarkupToTextContentsOnly
	| text |
	text := BTMarkupParser markupToText: 'abc<u>def<i>ghi</i>jkl</u>mno<p>pqr</p>stu<i><b>vwx</b></i>'.

	(self expect: text string) to equal: 'abcdefghijklmnopqrstuvwx'
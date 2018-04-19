as yet unclassified
testTagWithWeirdContent
	| text |
	text := PHMarkupParser markupToText: 'abc<i abc="<i>\"abc"  >def</i>ghi'.
	
	(self expect: text string) to equal: 'abcdefghi'
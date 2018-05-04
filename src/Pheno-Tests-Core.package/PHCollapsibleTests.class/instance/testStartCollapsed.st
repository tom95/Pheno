as yet unclassified
testStartCollapsed

	| collapsible |
	collapsible := PHCollapsible new
		add: (PHLabel text: 'Test Text');
		collapsed: true;
		resizeToPreferred.
		
	(self expect: collapsible height) to equal: 0
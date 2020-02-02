tests
testStartExpanded

	| collapsible label |
	collapsible := PHCollapsible new
		add: (label := PHLabel text: 'Test Text');
		collapsed: false;
		resizeToPreferred.
	
	(self expect: collapsible height) to equal: label height + collapsible layoutInset directionsAsPoint y
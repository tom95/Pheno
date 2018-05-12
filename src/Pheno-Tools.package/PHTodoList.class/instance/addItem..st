as yet unclassified
addItem: aString

	itemsPage add:
		(PHTodoListItem new
			text: aString;
			when: #toggleChecked send: #updatePercentage  to: self)
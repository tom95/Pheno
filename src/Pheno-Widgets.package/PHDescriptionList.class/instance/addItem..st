as yet unclassified
addItem: anItemTuple
	" e.g. {'label' asText allBold. 'description'} or {'label'. PHTextArea new} or {PHIcon iconEdit. PHTextArea new} "
	
	self addItem: anItemTuple second asWidget labeled: anItemTuple first asWidget
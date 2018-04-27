items
addItem: anItemTuple
	" e.g. {'<b>label</b>'. 'description'} or {'label'. PHTextArea new} or {PHIcon iconEdit. PHTextArea new} "
	
	self addItem: anItemTuple second asWidget labeled: anItemTuple first asWidget
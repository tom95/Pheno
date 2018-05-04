as yet unclassified
testSetIcon

	PHIconButton new iconName: #iconEdit.
	
	(self expect: [PHIconButton new iconName: #doesNotExistAtAll]) to raise: Error
as yet unclassified
testSetIcon

	BTIconButton new iconName: #iconEdit.
	
	(self expect: [BTIconButton new iconName: #doesNotExistAtAll]) to raise: Error
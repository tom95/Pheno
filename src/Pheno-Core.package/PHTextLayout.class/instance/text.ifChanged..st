accessing
text: aString ifChanged: aBlock
	
	| previousText |
	previousText := self text.
	self text: aString.
	previousText ~= self text ifTrue: [aBlock value]
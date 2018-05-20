accessing
text: aString ifChanged: aBlock
	
	| previousText |
	previousText := self text.
	self text: aString.
	
	(previousText ~= self text or: [previousText isText and: [aString isText and: [previousText runs ~= aString runs]]]) ifTrue: [aBlock value]
as yet unclassified
toggleItalic

	self target style: 'style' set: ((self target style: 'style') = 'italic' ifTrue: ['normal'] ifFalse: ['italic']).
	self updateProperties
as yet unclassified
toggleBold

	self target style: 'weight' set: ((self target style: 'weight') = 'bold' ifTrue: ['normal'] ifFalse: ['bold']).
	self updateProperties
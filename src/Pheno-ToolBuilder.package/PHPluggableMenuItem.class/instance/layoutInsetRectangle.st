as yet unclassified
layoutInsetRectangle

	| inset |
	inset := self layoutInset.
	inset isNumber ifTrue: [inset := inset asPoint].
	inset isPoint ifTrue: [inset := inset rect: inset].
	^ inset
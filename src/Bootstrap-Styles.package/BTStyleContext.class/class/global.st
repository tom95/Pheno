as yet unclassified
global

	^ GlobalStyleContext ifNil: [
		" the constructor refers to this reference, so we enter an infinite loop if we dont init it first "
		GlobalStyleContext := self basicNew.
		GlobalStyleContext initialize]
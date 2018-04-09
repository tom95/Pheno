as yet unclassified
check: aTestCase
	| expectedArguments actualArguments |
	
	expectedArguments := self arguments.
	actualArguments := actual.
	
	fulfilled ifFalse: [
		aTestCase
			assert: false
			description: ('Expected to{2} receive event {1}' format: {
				self event printString.
				self negated ifTrue: [' not'] ifFalse: ['']}) ].
	
	expectedArguments ifNotNil: [
		(self arguments: expectedArguments match: actualArguments) ifFalse: [
			aTestCase
				assert: false
				description: ('Expected arguments {2} from {1} to be {3}' format: {
					self event printString.
					actualArguments.
					expectedArguments}) ]]
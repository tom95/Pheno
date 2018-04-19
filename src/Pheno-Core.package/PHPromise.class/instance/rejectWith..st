resolving
rejectWith: anObject
	"Reject this promise."
	
	mutex critical: [
		(state == #fulfilled) ifTrue: [self error: 'Promise was already resolved'].
		(state == #rejected) ifTrue: [self error: 'Promise was already rejected'].
		error := anObject.
		state := #rejected.
		
		(self throwException: error) ifTrue: [
			(error isKindOf: Exception)
				ifTrue: [ error signal ]
				ifFalse: [ self error: 'Unhandled rejection' ]].
		
		rejecters do: [:r | self evaluateRejecter: r]]
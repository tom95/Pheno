resolving
resolveWith: arg
	"Resolve this promise"
	
	mutex critical: [
		(state == #fulfilled) ifTrue: [self error: 'Promise was already resolved'].
		(state == #rejected) ifTrue: [self error: 'Promise was already resolved'].
		value := arg.
		state := #fulfilled.
		resolvers do: [:r | self evaluateResolver: r]]
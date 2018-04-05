states
getState: aStateIndex

	^ aStateIndex = 0 or: [(states at: aStateIndex) = 1]
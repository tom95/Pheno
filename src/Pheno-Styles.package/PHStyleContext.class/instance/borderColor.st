computed-values
borderColor

	^ self lookup: #borderColor ifUnset: [Color transparent]
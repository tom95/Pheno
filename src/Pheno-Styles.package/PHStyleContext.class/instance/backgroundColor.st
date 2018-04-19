computed-values
backgroundColor

	^ self lookup: #backgroundColor ifUnset: [Color transparent]
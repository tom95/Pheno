computed-values
fontSize

	^ self lookup: #fontSize ifUnset: [self class baseFontSize]
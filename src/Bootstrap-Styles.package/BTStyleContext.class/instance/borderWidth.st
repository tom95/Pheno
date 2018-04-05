computed-values
borderWidth

	^ self lookup: #borderWidth ifUnset: [Rectangle left: 0 right: 0 top: 0 bottom: 0]
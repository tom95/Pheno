computed-values
borderRadius

	^ self lookup: #borderRadius ifUnset: [Rectangle left: 0 right: 0 top: 0 bottom: 0]
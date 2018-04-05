computed-values
padding

	^ self lookup: #padding ifUnset: [0 @ 0 corner: 0 @ 0]
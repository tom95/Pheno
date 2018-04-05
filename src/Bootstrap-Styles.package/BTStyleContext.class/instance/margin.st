computed-values
margin

	^ self lookup: #margin ifUnset: [0 @ 0 corner: 0 @ 0]
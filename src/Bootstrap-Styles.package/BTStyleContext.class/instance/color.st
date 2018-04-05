computed-values
color

	^ self lookup: #color ifUnset: [Color black]
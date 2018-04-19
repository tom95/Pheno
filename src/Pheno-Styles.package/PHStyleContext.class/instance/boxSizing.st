computed-values
boxSizing

	^ self lookup: #boxSizing ifUnset: [#contentBox]
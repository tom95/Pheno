instance creation
fromPromise: aFormPromise

	| image |
	image := self new.
	aFormPromise then: [:form | image form: form].
	^ image
spies
checkSpies
	spies do: [ :spy | spy check: self ].
	
	spies := OrderedCollection new
*Bootstrap-Styles
styleContext

	^ self valueOfProperty: #styleContext ifAbsentPut: [ | context |
		context := BTStyleContext new.
		context addDependent: self.
		context]
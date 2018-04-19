*Bootstrap-Styles
styleContext

	^ self valueOfProperty: #styleContext ifAbsentPut: [ | context |
		context := PHStyleContext new.
		context addDependent: self.
		context]
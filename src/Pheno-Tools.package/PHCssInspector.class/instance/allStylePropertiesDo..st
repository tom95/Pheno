accessing
allStylePropertiesDo: aBlock

	(PHStyleContext allMethodsInCategory: #'computed-values') do: aBlock
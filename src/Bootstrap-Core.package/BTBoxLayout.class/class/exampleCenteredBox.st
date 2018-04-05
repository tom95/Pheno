examples
exampleCenteredBox

	| window loginPage loginBox |
	loginBox := (BTPage new vertical: true; align: #(center center)) color: Color green; minSize: 100 asPoint.
	loginPage := BTPage new color: Color red; add: loginBox.
	window := BTTopLevel new size: 600 asPoint; padding: 0; add: loginPage.
	window openInWorld
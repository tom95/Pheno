preferences
wantsToBeDefaultMorphicToolbuilder

	<preference: 'Pheno as default tool builder'
		category: 'Pheno'
		description: 'If set Morphic projects will use the Pheno toolbuilder by default.'
		type: #Boolean>
	^ WantsToBeDefaultMorphicToolbuilder ifNil: [false]
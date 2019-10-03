*Pheno-Styles
addedMorph: aMorph

	aMorph isWidget ifTrue: [
		aMorph styleContext parent: self styleContext].
	
	self updateHierarchyStyleState
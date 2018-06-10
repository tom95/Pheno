*Pheno-Core-testing-utils
findToplevelOfKind: aClass

	^ self submorphs detect: [:m | m isKindOf: aClass]
extent-fix
layoutChanged

	super layoutChanged.
	
	"lots of widgets being added while constructing cause layoutChanged, we have to wait till the important ones are ready"
	(labelArea notNil and: [self paneMorphs notNil]) ifTrue: [self extent: self extent]
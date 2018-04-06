system startup
startUp
 super startUp.
	ModuleAvailable := false.
 
 [ self primRegisterCustomFontDirectory: (FileDirectory default / 'BP2016H1' / 'assets') fullName.
  self updateDpi.
  ModuleAvailable := true ] on: Error do: [ ModuleAvailable := false ].
 
	self allSubInstancesDo: [ :layout | layout restoreAfterLoad ]
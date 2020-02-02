styles
applicationStyles

	(self for: #codeHolderAnnotationPane)
		padding: 1.0rem @ 0;
		borderWidth: (Rectangle left: 1 right: 1 top: 0 bottom: 1);
		borderRadius: (Rectangle left: self borderRadius right: 0 top: 0 bottom: self borderRadius).
	
	(self for: #codeHolderCodePane)
		borderWidth: (Rectangle left: 1 right: 1 top: 0 bottom: 1).
	
	(self for: #codeHolderOptionalButtonsPanel)
		padding: (Rectangle left: 0.5rem right: 0.5rem top: 2 bottom: 0);
		backgroundColor: #f2f2f2;
		border: 1 @ 0 color: self borderColor.
	
	(self for: #browserMethodListSwitches)
		padding: 0.5rem @ 1;
		backgroundColor: #f2f2f2.
	
	(self for: #browserClassList)
		borderWidth: (Rectangle left: 0 right: 0 top: 1 bottom: 0).
	
	(self for: #browserMessageCategoryList)
		borderWidth: (Rectangle left: 1 right: 0 top: 1 bottom: 0).
		
	(self for: #browserSystemCategoryList)
		borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 0).
		
	(self for: #browserMessageList)
		borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 0)
bugs
testLabelNestedWithPaddingAndAnotherChild

	| container |
	container := self horizontalTopLevel
		add: (self widget minSize: 64);
		add: ((BTLabel text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin litobscure Latin words, consectetur, from a panied by English versions from the 1914 translation by H. Rackham. Lorem ipsum dolor sit amet..\\, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\de Finibus Bby H. Rackham. Lorem ipsum dolor sit amet..\\, coby H. Rackham. Lorem ipsum dolor sit amet..\\, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\de Finibus Bmes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\de Finibus Bby H. Rackham. Lorem ipsum dolor sit amet..\\, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\de Finibus B') expand: true);
			fullBounds.
	
	self assert: 600 equals: container width
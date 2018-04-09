bugs
testLabelNestedWithPadding

	| container |
	container := self verticalContainer
		minSize: 300 @ 1000;
		add: (self verticalContainer
			padding: 50;
			add: (BTLabel text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin litobscure Latin words, consectetur, from a panied by English versions from the 1914 translation by H. Rackham. Lorem ipsum dolor sit amet..\\, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\de Finibus B'));
		fullBounds.
	
	self assert: 300 equals: container width
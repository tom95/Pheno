initialize-release
initialize 

	super initialize.
	
	"set default text in case someone forgets to set text"
	label := PHLabel bold: 'No Text Set'.
	textArea := self textAreaClass new.
	
	self
		withLayout;
		vertical: true;
		add: label;
		add: textArea
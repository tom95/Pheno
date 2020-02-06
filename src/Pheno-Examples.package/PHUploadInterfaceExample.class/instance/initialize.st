initialize-release
initialize

	| uploadBox scriptTagArea uploadArea tagArea tagTextArea |
	super initialize.
	
	tagArea := PHTagList new.
	
	tagTextArea := PHTextAreaWithLabel
		text: 'Tag scripts and languages'
		placeholder: 'Start Typing for Autocomplete' 
		textAreaClass: PHTextCompletion.
	
	tagTextArea textArea
		suggestionsList: {'Latin'. 'Greek'. 'Japanese'. 'German'. 'English'. 'Esperanto'. 'Spanish'. 'French'. 'Klingon'};
		when: #confirmed evaluate: [:text :data |
			tagArea addTag: text.
			tagTextArea textArea clear].
	
	scriptTagArea := PHPage column
		add: tagTextArea;
		add: tagArea.
	
	uploadArea := PHPage row
		add: (PHPage column
			expand: true;
			add: (PHLabel bold: 'Upload from File');
			add: ((PHButton icon: #iconUpload) addStyleClass: #primary; align: #(center center)));
		add: (PHPage column
			expand: true;
			add: (PHTextAreaWithLabel text: 'or link a Github repository' placeholder: 'https://github.com/...'  );
			add: ((PHButton label: 'Connect to Github') addStyleClass: #secondary)).
	
	uploadBox := (PHPage new vertical: true; expand: true; align: #(fill fill))
		add: (PHLabel heading: 'Upload new Project');
		add: (PHTextAreaWithLabel text: 'Name');
		add: uploadArea;
		add: scriptTagArea;
		add: ((PHButton text: 'Create Project' ) addStyleClass: #primary; align: #(end start)).
	
	self
		addStyleClass: #withPadding;
		add: uploadBox
as yet unclassified
initialize

	| uploadBox scriptTagArea uploadArea tagArea tagTextArea |
	super initialize.
	
	tagArea := BTTagList new.
	
	tagTextArea := BTTextAreaWithLabel
		text: 'Tag scripts and languages'
		placeholder: 'Start Typing for Autocomplete' 
		textAreaClass: BTTextCompletion.
	
	tagTextArea textArea
		suggestionsList: {'Latin'. 'Greek'. 'Japanese'. 'German'. 'English'. 'Esperanto'. 'Spanish'. 'French'. 'Klingon'};
		when: #confirmed evaluate: [:text :data |
			tagArea addTag: text.
			tagTextArea textArea clear].
	
	scriptTagArea := BTPage column
		add: tagTextArea;
		add: tagArea.
	
	uploadArea := BTPage row
		add: (BTPage column
			expand: true;
			add: (BTLabel bold: 'Upload from File');
			add: ((BTButton icon: #iconUpload) addStyleClass: #primary; align: #(center center)));
		add: (BTPage column
			expand: true;
			add: (BTTextAreaWithLabel text: 'or link a Github repository' placeholder: 'https://github.com/...'  );
			add: ((BTButton label: 'Connect to Github') addStyleClass: #secondary)).
	
	uploadBox := (BTPage new vertical: true; expand: true; align: #(fill fill))
		add: (BTLabel heading: 'Upload new Project');
		add: (BTTextAreaWithLabel text: 'Name');
		add: uploadArea;
		add: scriptTagArea;
		add: ((BTButton text: 'Create Project' ) addStyleClass: #primary; align: #(end start)).
	
	self
		addStyleClass: #withPadding;
		add: uploadBox
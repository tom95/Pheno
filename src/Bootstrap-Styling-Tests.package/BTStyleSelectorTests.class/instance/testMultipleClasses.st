as yet unclassified
testMultipleClasses

	| context |
	context := BTStyleContext new
		addClass: #alert;
		addProvider: (BTStyleProvider new
			add: ((BTStyle for: #(alert danger)) backgroundColor: Color orange);
			add: ((BTStyle for: #alert) backgroundColor: Color gray)) priority: BTStyleContext priorityTheme;
		yourself.
		
	(self expect: context backgroundColor) to equal: Color gray.
	
	context addClass: #danger.
	(self expect: context backgroundColor) to equal: Color orange
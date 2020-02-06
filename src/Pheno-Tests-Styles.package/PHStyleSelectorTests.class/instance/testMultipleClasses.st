tests
testMultipleClasses

	| context |
	context := PHStyleContext new
		addClass: #alert;
		addProvider: (PHStyleProvider new
			add: ((PHStyle for: #(alert danger)) backgroundColor: Color orange);
			add: ((PHStyle for: #alert) backgroundColor: Color gray)) priority: PHStyleContext priorityTheme;
		yourself.
		
	(self expect: context backgroundColor) to equal: Color gray.
	
	context addClass: #danger.
	(self expect: context backgroundColor) to equal: Color orange
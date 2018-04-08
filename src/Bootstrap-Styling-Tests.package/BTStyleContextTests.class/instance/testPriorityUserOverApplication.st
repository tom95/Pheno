as yet unclassified
testPriorityUserOverApplication

	context := BTStyleContext new
		addProvider: redStyle priority: BTStyleContext priorityUser;
		addProvider: blueStyle priority: BTStyleContext priorityApplication.
	
	(self expect: (context lookup: #color)) to equal: Color red.
	
	"change order "
	context := BTStyleContext new
		addProvider: blueStyle priority: BTStyleContext priorityApplication;
		addProvider: redStyle priority: BTStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color red.
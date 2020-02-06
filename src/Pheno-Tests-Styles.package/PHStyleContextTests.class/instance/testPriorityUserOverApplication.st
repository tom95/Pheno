tests
testPriorityUserOverApplication

	context := PHStyleContext new
		addProvider: redStyle priority: PHStyleContext priorityUser;
		addProvider: blueStyle priority: PHStyleContext priorityApplication.
	
	(self expect: (context lookup: #color)) to equal: Color red.
	
	"change order "
	context := PHStyleContext new
		addProvider: blueStyle priority: PHStyleContext priorityApplication;
		addProvider: redStyle priority: PHStyleContext priorityUser.
	
	(self expect: (context lookup: #color)) to equal: Color red.
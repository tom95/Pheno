tests
testFirstChildLastChild

	| child1 child2 child3 child4 parent |
	parent := PHWidget new.
	child1 := PHWidget new.
	child2 := PHWidget new.
	child3 := PHWidget new.
	child4 := PHWidget new.
	
	(self expect: child1 styleContext stateFirstChild) to be: false.
	(self expect: child1 styleContext stateLastChild) to be: false.
	
	parent add: child1.
	(self expect: child1 styleContext stateFirstChild) to be: true.
	(self expect: child1 styleContext stateLastChild) to be: true.
	
	parent add: child2.
	(self expect: child1 styleContext stateFirstChild) to be: true.
	(self expect: child1 styleContext stateLastChild) to be: false.
	(self expect: child2 styleContext stateFirstChild) to be: false.
	(self expect: child2 styleContext stateLastChild) to be: true.
	
	parent add: child3 at: 1.
	(self expect: child3 styleContext stateFirstChild) to be: true.
	(self expect: child1 styleContext stateFirstChild) to be: false.
	
	parent add: child4 at: 4.
	(self expect: child4 styleContext stateLastChild) to be: true.
	(self expect: child2 styleContext stateLastChild) to be: false
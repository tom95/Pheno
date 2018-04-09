running
setUp
	super setUp.

	world := (PasteUpMorph newWorldForProject: nil)
		extent: 300@200;
		viewBox: (0@0 extent: 300@200);
		yourself.
	
	(world instVarNamed: #worldState)
		instVarNamed: #canvas
		put: (Form extent: 300@200 depth: 32) getCanvas. 

	hand := BTTestHandMorph new.
	world
		removeHand: world firstHand; "the default hand"
		addHand: hand
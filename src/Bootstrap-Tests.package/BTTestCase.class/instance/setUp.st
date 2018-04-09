running
setUp

	super setUp.
	
	previousScalingFactor := BTStyleContext scalingFactor.
	BTStyleContext scalingFactor: 1.
	
	spies := OrderedCollection new.